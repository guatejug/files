
CREATE SEQUENCE public.period_time_id_seq;

CREATE TABLE public.period_time (
                period_time_id INTEGER NOT NULL DEFAULT nextval('public.period_time_id_seq'),
                period_date DATE NOT NULL,
                start_time TIME NOT NULL,
                end_time TIME NOT NULL,
                CONSTRAINT period_time PRIMARY KEY (period_time_id)
);


ALTER SEQUENCE public.period_time_id_seq OWNED BY public.period_time.period_time_id;

CREATE TABLE public.location (
                location_id INTEGER NOT NULL,
                name VARCHAR(50) NOT NULL,
                description VARCHAR(4000),
                CONSTRAINT location_pk PRIMARY KEY (location_id)
);


CREATE SEQUENCE public.permission_id_seq;

CREATE TABLE public.permission (
                permission_id INTEGER NOT NULL DEFAULT nextval('public.permission_id_seq'),
                name VARCHAR(50) NOT NULL,
                CONSTRAINT permission_pk PRIMARY KEY (permission_id)
);


ALTER SEQUENCE public.permission_id_seq OWNED BY public.permission.permission_id;

CREATE SEQUENCE public.roles_id_seq;

CREATE TABLE public.roles (
                roles_id INTEGER NOT NULL DEFAULT nextval('public.roles_id_seq'),
                name VARCHAR(50) NOT NULL,
                CONSTRAINT roles_pk PRIMARY KEY (roles_id)
);


ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.roles_id;

CREATE TABLE public.rol_permission (
                roles_id INTEGER NOT NULL,
                permission_id INTEGER NOT NULL,
                CONSTRAINT rol_permission_pk PRIMARY KEY (roles_id, permission_id)
);


CREATE SEQUENCE public.users_id_seq;

CREATE TABLE public.users (
                users_id INTEGER NOT NULL DEFAULT nextval('public.users_id_seq'),
                email VARCHAR(150) NOT NULL,
                name VARCHAR(200) NOT NULL,
                last_name VARCHAR(200) NOT NULL,
                password VARCHAR(100) NOT NULL,
                CONSTRAINT users_pk PRIMARY KEY (users_id)
);


ALTER SEQUENCE public.users_id_seq OWNED BY public.users.users_id;

CREATE TABLE public.user_rol (
                users_id INTEGER NOT NULL,
                roles_id INTEGER NOT NULL,
                CONSTRAINT user_rol_pk PRIMARY KEY (users_id, roles_id)
);


CREATE SEQUENCE public.category_id_seq;

CREATE TABLE public.category (
                category_id INTEGER NOT NULL DEFAULT nextval('public.category_id_seq'),
                name VARCHAR(200) NOT NULL,
                CONSTRAINT category_pk PRIMARY KEY (category_id)
);


ALTER SEQUENCE public.category_id_seq OWNED BY public.category.category_id;

CREATE SEQUENCE public.lecture_id_seq;

CREATE TABLE public.lecture (
                lecture_id INTEGER NOT NULL DEFAULT nextval('public.lecture_id_seq'),
                name VARCHAR(500) NOT NULL,
                description VARCHAR(4000),
                level SMALLINT NOT NULL,
                duration SMALLINT NOT NULL,
                approved BOOLEAN NOT NULL,
                CONSTRAINT lecture_pk PRIMARY KEY (lecture_id)
);


ALTER SEQUENCE public.lecture_id_seq OWNED BY public.lecture.lecture_id;

CREATE TABLE public.schedule (
                lecture_id INTEGER NOT NULL,
                period_time_id INTEGER NOT NULL,
                location_id INTEGER NOT NULL,
                CONSTRAINT schedule_pk PRIMARY KEY (lecture_id, period_time_id, location_id)
);


CREATE SEQUENCE public.evaluator_id_seq;

CREATE TABLE public.evaluator (
                evaluator_id INTEGER NOT NULL DEFAULT nextval('public.evaluator_id_seq'),
                lecture_id INTEGER NOT NULL,
                users_id INTEGER NOT NULL,
                CONSTRAINT evaluator_pk PRIMARY KEY (evaluator_id)
);


ALTER SEQUENCE public.evaluator_id_seq OWNED BY public.evaluator.evaluator_id;

CREATE TABLE public.evaluator_historial (
                evaluator_id INTEGER NOT NULL,
                status SMALLINT NOT NULL,
                creation_date TIMESTAMP NOT NULL,
                comments VARCHAR(4000) NOT NULL,
                CONSTRAINT evaluator_historial_pk PRIMARY KEY (evaluator_id)
);


CREATE TABLE public.lecture_category (
                lecture_id INTEGER NOT NULL,
                category_id INTEGER NOT NULL,
                CONSTRAINT lecture_category_pk PRIMARY KEY (lecture_id, category_id)
);


CREATE SEQUENCE public.expositor_id_seq;

CREATE TABLE public.expositor (
                expositor_id INTEGER NOT NULL DEFAULT nextval('public.expositor_id_seq'),
                register_date TIMESTAMP NOT NULL,
                biography VARCHAR(3000) NOT NULL,
                telephones VARCHAR(100) NOT NULL,
                users_id INTEGER NOT NULL,
                CONSTRAINT expositor_pk PRIMARY KEY (expositor_id)
);


ALTER SEQUENCE public.expositor_id_seq OWNED BY public.expositor.expositor_id;

CREATE TABLE public.expositor_lecture (
                expositor_id INTEGER NOT NULL,
                lecture_id INTEGER NOT NULL,
                CONSTRAINT expositor_lecture_pk PRIMARY KEY (expositor_id, lecture_id)
);


CREATE SEQUENCE public.attendee_attendee_id_seq;

CREATE TABLE public.attendee (
                attendee_id INTEGER NOT NULL DEFAULT nextval('public.attendee_attendee_id_seq'),
                name VARCHAR(200) NOT NULL,
                last_name VARCHAR(200) NOT NULL,
                dpi VARCHAR(20) NOT NULL,
                gender VARCHAR(2) NOT NULL,
                birthday DATE NOT NULL,
                email VARCHAR(150) NOT NULL,
                telephones VARCHAR(150) NOT NULL,
                company VARCHAR(200) NOT NULL,
                company_sector VARCHAR(500) NOT NULL,
                position VARCHAR(100) NOT NULL,
                CONSTRAINT attendee_pk PRIMARY KEY (attendee_id)
);


ALTER SEQUENCE public.attendee_attendee_id_seq OWNED BY public.attendee.attendee_id;

CREATE TABLE public.attendee_lecture (
                attendee_id INTEGER NOT NULL,
                lecture_id INTEGER NOT NULL,
                CONSTRAINT attendee_lecture_pk PRIMARY KEY (attendee_id, lecture_id)
);


ALTER TABLE public.schedule ADD CONSTRAINT period_time_schedule_fk
FOREIGN KEY (period_time_id)
REFERENCES public.period_time (period_time_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.schedule ADD CONSTRAINT location_schedule_fk
FOREIGN KEY (location_id)
REFERENCES public.location (location_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.rol_permission ADD CONSTRAINT permission_rol_permission_fk
FOREIGN KEY (permission_id)
REFERENCES public.permission (permission_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.user_rol ADD CONSTRAINT roles_user_rol_fk
FOREIGN KEY (roles_id)
REFERENCES public.roles (roles_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.rol_permission ADD CONSTRAINT roles_rol_permission_fk
FOREIGN KEY (roles_id)
REFERENCES public.roles (roles_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.expositor ADD CONSTRAINT users_expositor_fk
FOREIGN KEY (users_id)
REFERENCES public.users (users_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.user_rol ADD CONSTRAINT users_user_rol_fk
FOREIGN KEY (users_id)
REFERENCES public.users (users_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.evaluator ADD CONSTRAINT users_user_evaluator_fk
FOREIGN KEY (users_id)
REFERENCES public.users (users_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.lecture_category ADD CONSTRAINT category_lecture_category_fk
FOREIGN KEY (category_id)
REFERENCES public.category (category_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.expositor_lecture ADD CONSTRAINT lecture_expositor_lecture_fk
FOREIGN KEY (lecture_id)
REFERENCES public.lecture (lecture_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.lecture_category ADD CONSTRAINT lecture_lecture_category_fk
FOREIGN KEY (lecture_id)
REFERENCES public.lecture (lecture_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.attendee_lecture ADD CONSTRAINT lecture_competitor_lecture_fk
FOREIGN KEY (lecture_id)
REFERENCES public.lecture (lecture_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.evaluator ADD CONSTRAINT lecture_user_evaluator_fk
FOREIGN KEY (lecture_id)
REFERENCES public.lecture (lecture_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.schedule ADD CONSTRAINT lecture_schedule_fk
FOREIGN KEY (lecture_id)
REFERENCES public.lecture (lecture_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.evaluator_historial ADD CONSTRAINT evaluator_evaluator_historial_fk
FOREIGN KEY (evaluator_id)
REFERENCES public.evaluator (evaluator_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.expositor_lecture ADD CONSTRAINT expositor_expositor_lecture_fk
FOREIGN KEY (expositor_id)
REFERENCES public.expositor (expositor_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.attendee_lecture ADD CONSTRAINT competitor_competitor_lecture_fk
FOREIGN KEY (attendee_id)
REFERENCES public.attendee (attendee_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE; 
