PGDMP     6                    {         
   University #   14.8 (Ubuntu 14.8-0ubuntu0.22.04.1) #   14.8 (Ubuntu 14.8-0ubuntu0.22.04.1) z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33747 
   University    DATABASE     a   CREATE DATABASE "University" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "University";
                postgres    false            �            1259    34073    course_schedule    TABLE     �   CREATE TABLE public.course_schedule (
    schedule_id integer NOT NULL,
    student_id integer,
    curriculum_id integer,
    grade integer NOT NULL
);
 #   DROP TABLE public.course_schedule;
       public         heap    postgres    false            �            1259    34072    course_schedule_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.course_schedule_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.course_schedule_schedule_id_seq;
       public          postgres    false    234            �           0    0    course_schedule_schedule_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.course_schedule_schedule_id_seq OWNED BY public.course_schedule.schedule_id;
          public          postgres    false    233            �            1259    33756    courses    TABLE     q   CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course_number character varying(5) NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    33755    courses_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.courses_course_id_seq;
       public          postgres    false    212            �           0    0    courses_course_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;
          public          postgres    false    211            �            1259    33920 
   curriculum    TABLE     �   CREATE TABLE public.curriculum (
    curriculum_id integer NOT NULL,
    fac_course_id integer,
    prof_sub_id integer,
    subject_time integer
);
    DROP TABLE public.curriculum;
       public         heap    postgres    false            �            1259    33919    curriculum_curriculum_id_seq    SEQUENCE     �   CREATE SEQUENCE public.curriculum_curriculum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.curriculum_curriculum_id_seq;
       public          postgres    false    232            �           0    0    curriculum_curriculum_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.curriculum_curriculum_id_seq OWNED BY public.curriculum.curriculum_id;
          public          postgres    false    231            �            1259    33777    deans    TABLE     �   CREATE TABLE public.deans (
    dean_id integer NOT NULL,
    name character varying(25) NOT NULL,
    surname character varying(25) NOT NULL
);
    DROP TABLE public.deans;
       public         heap    postgres    false            �            1259    33776    deans_dean_id_seq    SEQUENCE     �   CREATE SEQUENCE public.deans_dean_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.deans_dean_id_seq;
       public          postgres    false    216            �           0    0    deans_dean_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.deans_dean_id_seq OWNED BY public.deans.dean_id;
          public          postgres    false    215            �            1259    34092    exam    TABLE     u   CREATE TABLE public.exam (
    exam_id integer NOT NULL,
    schedule_id integer,
    exam_grade integer NOT NULL
);
    DROP TABLE public.exam;
       public         heap    postgres    false            �            1259    34091    exam_exam_id_seq    SEQUENCE     �   CREATE SEQUENCE public.exam_exam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.exam_exam_id_seq;
       public          postgres    false    236            �           0    0    exam_exam_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.exam_exam_id_seq OWNED BY public.exam.exam_id;
          public          postgres    false    235            �            1259    33882 
   fac_course    TABLE     �   CREATE TABLE public.fac_course (
    fac_course_id integer NOT NULL,
    course_id integer NOT NULL,
    faculty_id integer NOT NULL
);
    DROP TABLE public.fac_course;
       public         heap    postgres    false            �            1259    33881    fac_course_fac_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fac_course_fac_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.fac_course_fac_course_id_seq;
       public          postgres    false    228            �           0    0    fac_course_fac_course_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.fac_course_fac_course_id_seq OWNED BY public.fac_course.fac_course_id;
          public          postgres    false    227            �            1259    33801    fac_dean    TABLE     m   CREATE TABLE public.fac_dean (
    fac_dean integer NOT NULL,
    dean_id integer,
    faculty_id integer
);
    DROP TABLE public.fac_dean;
       public         heap    postgres    false            �            1259    33800    fac_dean_fac_dean_seq    SEQUENCE     �   CREATE SEQUENCE public.fac_dean_fac_dean_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.fac_dean_fac_dean_seq;
       public          postgres    false    218            �           0    0    fac_dean_fac_dean_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.fac_dean_fac_dean_seq OWNED BY public.fac_dean.fac_dean;
          public          postgres    false    217            �            1259    33763 	   faculties    TABLE     t   CREATE TABLE public.faculties (
    faculty_id integer NOT NULL,
    faculty_name character varying(25) NOT NULL
);
    DROP TABLE public.faculties;
       public         heap    postgres    false            �            1259    33762    faculties_faculty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faculties_faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.faculties_faculty_id_seq;
       public          postgres    false    214            �           0    0    faculties_faculty_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.faculties_faculty_id_seq OWNED BY public.faculties.faculty_id;
          public          postgres    false    213            �            1259    33901    professor_subject    TABLE     ~   CREATE TABLE public.professor_subject (
    prof_sub_id integer NOT NULL,
    subject_id integer,
    professor_id integer
);
 %   DROP TABLE public.professor_subject;
       public         heap    postgres    false            �            1259    33900 !   professor_subject_prof_sub_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professor_subject_prof_sub_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.professor_subject_prof_sub_id_seq;
       public          postgres    false    230            �           0    0 !   professor_subject_prof_sub_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.professor_subject_prof_sub_id_seq OWNED BY public.professor_subject.prof_sub_id;
          public          postgres    false    229            �            1259    33841 
   professors    TABLE     �   CREATE TABLE public.professors (
    professor_id integer NOT NULL,
    name character varying(25) NOT NULL,
    surname character varying(30) NOT NULL
);
    DROP TABLE public.professors;
       public         heap    postgres    false            �            1259    33840    professors_professor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professors_professor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.professors_professor_id_seq;
       public          postgres    false    222            �           0    0    professors_professor_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.professors_professor_id_seq OWNED BY public.professors.professor_id;
          public          postgres    false    221            �            1259    33855    programs    TABLE     �   CREATE TABLE public.programs (
    program_id integer NOT NULL,
    program_name character varying(50) NOT NULL,
    program_price integer NOT NULL
);
    DROP TABLE public.programs;
       public         heap    postgres    false            �            1259    33854    programs_program_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programs_program_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.programs_program_id_seq;
       public          postgres    false    224            �           0    0    programs_program_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.programs_program_id_seq OWNED BY public.programs.program_id;
          public          postgres    false    223            �            1259    33863    student_program    TABLE     �   CREATE TABLE public.student_program (
    stud_prog_id integer NOT NULL,
    program_id integer NOT NULL,
    student_id integer NOT NULL
);
 #   DROP TABLE public.student_program;
       public         heap    postgres    false            �            1259    33862     student_program_stud_prog_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_program_stud_prog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.student_program_stud_prog_id_seq;
       public          postgres    false    226            �           0    0     student_program_stud_prog_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.student_program_stud_prog_id_seq OWNED BY public.student_program.stud_prog_id;
          public          postgres    false    225            �            1259    33749    students    TABLE     �   CREATE TABLE public.students (
    student_id integer NOT NULL,
    name character varying(25) NOT NULL,
    surname character varying(25) NOT NULL,
    age integer NOT NULL
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    33748    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.students_student_id_seq;
       public          postgres    false    210            �           0    0    students_student_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;
          public          postgres    false    209            �            1259    33827    subjects    TABLE     �   CREATE TABLE public.subjects (
    subject_id integer NOT NULL,
    subject_name character varying(30) NOT NULL,
    subject_price integer NOT NULL
);
    DROP TABLE public.subjects;
       public         heap    postgres    false            �            1259    33826    subjects_subject_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.subjects_subject_id_seq;
       public          postgres    false    220            �           0    0    subjects_subject_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.subjects_subject_id_seq OWNED BY public.subjects.subject_id;
          public          postgres    false    219            �           2604    34076    course_schedule schedule_id    DEFAULT     �   ALTER TABLE ONLY public.course_schedule ALTER COLUMN schedule_id SET DEFAULT nextval('public.course_schedule_schedule_id_seq'::regclass);
 J   ALTER TABLE public.course_schedule ALTER COLUMN schedule_id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    33759    courses course_id    DEFAULT     v   ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);
 @   ALTER TABLE public.courses ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    33923    curriculum curriculum_id    DEFAULT     �   ALTER TABLE ONLY public.curriculum ALTER COLUMN curriculum_id SET DEFAULT nextval('public.curriculum_curriculum_id_seq'::regclass);
 G   ALTER TABLE public.curriculum ALTER COLUMN curriculum_id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    33780    deans dean_id    DEFAULT     n   ALTER TABLE ONLY public.deans ALTER COLUMN dean_id SET DEFAULT nextval('public.deans_dean_id_seq'::regclass);
 <   ALTER TABLE public.deans ALTER COLUMN dean_id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    34095    exam exam_id    DEFAULT     l   ALTER TABLE ONLY public.exam ALTER COLUMN exam_id SET DEFAULT nextval('public.exam_exam_id_seq'::regclass);
 ;   ALTER TABLE public.exam ALTER COLUMN exam_id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    33885    fac_course fac_course_id    DEFAULT     �   ALTER TABLE ONLY public.fac_course ALTER COLUMN fac_course_id SET DEFAULT nextval('public.fac_course_fac_course_id_seq'::regclass);
 G   ALTER TABLE public.fac_course ALTER COLUMN fac_course_id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    33804    fac_dean fac_dean    DEFAULT     v   ALTER TABLE ONLY public.fac_dean ALTER COLUMN fac_dean SET DEFAULT nextval('public.fac_dean_fac_dean_seq'::regclass);
 @   ALTER TABLE public.fac_dean ALTER COLUMN fac_dean DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    33766    faculties faculty_id    DEFAULT     |   ALTER TABLE ONLY public.faculties ALTER COLUMN faculty_id SET DEFAULT nextval('public.faculties_faculty_id_seq'::regclass);
 C   ALTER TABLE public.faculties ALTER COLUMN faculty_id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    33904    professor_subject prof_sub_id    DEFAULT     �   ALTER TABLE ONLY public.professor_subject ALTER COLUMN prof_sub_id SET DEFAULT nextval('public.professor_subject_prof_sub_id_seq'::regclass);
 L   ALTER TABLE public.professor_subject ALTER COLUMN prof_sub_id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    33844    professors professor_id    DEFAULT     �   ALTER TABLE ONLY public.professors ALTER COLUMN professor_id SET DEFAULT nextval('public.professors_professor_id_seq'::regclass);
 F   ALTER TABLE public.professors ALTER COLUMN professor_id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    33858    programs program_id    DEFAULT     z   ALTER TABLE ONLY public.programs ALTER COLUMN program_id SET DEFAULT nextval('public.programs_program_id_seq'::regclass);
 B   ALTER TABLE public.programs ALTER COLUMN program_id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    33866    student_program stud_prog_id    DEFAULT     �   ALTER TABLE ONLY public.student_program ALTER COLUMN stud_prog_id SET DEFAULT nextval('public.student_program_stud_prog_id_seq'::regclass);
 K   ALTER TABLE public.student_program ALTER COLUMN stud_prog_id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    33752    students student_id    DEFAULT     z   ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);
 B   ALTER TABLE public.students ALTER COLUMN student_id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    33830    subjects subject_id    DEFAULT     z   ALTER TABLE ONLY public.subjects ALTER COLUMN subject_id SET DEFAULT nextval('public.subjects_subject_id_seq'::regclass);
 B   ALTER TABLE public.subjects ALTER COLUMN subject_id DROP DEFAULT;
       public          postgres    false    219    220    220            �          0    34073    course_schedule 
   TABLE DATA           X   COPY public.course_schedule (schedule_id, student_id, curriculum_id, grade) FROM stdin;
    public          postgres    false    234   .�       �          0    33756    courses 
   TABLE DATA           ;   COPY public.courses (course_id, course_number) FROM stdin;
    public          postgres    false    212   "�       �          0    33920 
   curriculum 
   TABLE DATA           ]   COPY public.curriculum (curriculum_id, fac_course_id, prof_sub_id, subject_time) FROM stdin;
    public          postgres    false    232   Q�       �          0    33777    deans 
   TABLE DATA           7   COPY public.deans (dean_id, name, surname) FROM stdin;
    public          postgres    false    216   L�       �          0    34092    exam 
   TABLE DATA           @   COPY public.exam (exam_id, schedule_id, exam_grade) FROM stdin;
    public          postgres    false    236   ��       �          0    33882 
   fac_course 
   TABLE DATA           J   COPY public.fac_course (fac_course_id, course_id, faculty_id) FROM stdin;
    public          postgres    false    228   *�       �          0    33801    fac_dean 
   TABLE DATA           A   COPY public.fac_dean (fac_dean, dean_id, faculty_id) FROM stdin;
    public          postgres    false    218   v�       �          0    33763 	   faculties 
   TABLE DATA           =   COPY public.faculties (faculty_id, faculty_name) FROM stdin;
    public          postgres    false    214   ��       �          0    33901    professor_subject 
   TABLE DATA           R   COPY public.professor_subject (prof_sub_id, subject_id, professor_id) FROM stdin;
    public          postgres    false    230   ՘       �          0    33841 
   professors 
   TABLE DATA           A   COPY public.professors (professor_id, name, surname) FROM stdin;
    public          postgres    false    222   &�       �          0    33855    programs 
   TABLE DATA           K   COPY public.programs (program_id, program_name, program_price) FROM stdin;
    public          postgres    false    224   �       �          0    33863    student_program 
   TABLE DATA           O   COPY public.student_program (stud_prog_id, program_id, student_id) FROM stdin;
    public          postgres    false    226   ]�       �          0    33749    students 
   TABLE DATA           B   COPY public.students (student_id, name, surname, age) FROM stdin;
    public          postgres    false    210   ��       �          0    33827    subjects 
   TABLE DATA           K   COPY public.subjects (subject_id, subject_name, subject_price) FROM stdin;
    public          postgres    false    220   5�       �           0    0    course_schedule_schedule_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.course_schedule_schedule_id_seq', 97, true);
          public          postgres    false    233            �           0    0    courses_course_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.courses_course_id_seq', 4, true);
          public          postgres    false    211            �           0    0    curriculum_curriculum_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.curriculum_curriculum_id_seq', 48, true);
          public          postgres    false    231            �           0    0    deans_dean_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.deans_dean_id_seq', 3, true);
          public          postgres    false    215            �           0    0    exam_exam_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.exam_exam_id_seq', 97, true);
          public          postgres    false    235            �           0    0    fac_course_fac_course_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.fac_course_fac_course_id_seq', 12, true);
          public          postgres    false    227            �           0    0    fac_dean_fac_dean_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.fac_dean_fac_dean_seq', 3, true);
          public          postgres    false    217            �           0    0    faculties_faculty_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.faculties_faculty_id_seq', 3, true);
          public          postgres    false    213            �           0    0 !   professor_subject_prof_sub_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.professor_subject_prof_sub_id_seq', 12, true);
          public          postgres    false    229            �           0    0    professors_professor_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.professors_professor_id_seq', 12, true);
          public          postgres    false    221            �           0    0    programs_program_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.programs_program_id_seq', 3, true);
          public          postgres    false    223            �           0    0     student_program_stud_prog_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.student_program_stud_prog_id_seq', 23, true);
          public          postgres    false    225            �           0    0    students_student_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.students_student_id_seq', 25, true);
          public          postgres    false    209            �           0    0    subjects_subject_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.subjects_subject_id_seq', 12, true);
          public          postgres    false    219            �           2606    34078 $   course_schedule course_schedule_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.course_schedule
    ADD CONSTRAINT course_schedule_pkey PRIMARY KEY (schedule_id);
 N   ALTER TABLE ONLY public.course_schedule DROP CONSTRAINT course_schedule_pkey;
       public            postgres    false    234            �           2606    34080 <   course_schedule course_schedule_student_id_curriculum_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.course_schedule
    ADD CONSTRAINT course_schedule_student_id_curriculum_id_key UNIQUE (student_id, curriculum_id);
 f   ALTER TABLE ONLY public.course_schedule DROP CONSTRAINT course_schedule_student_id_curriculum_id_key;
       public            postgres    false    234    234            �           2606    33761    courses courses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    212            �           2606    33927 3   curriculum curriculum_fac_course_id_prof_sub_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.curriculum
    ADD CONSTRAINT curriculum_fac_course_id_prof_sub_id_key UNIQUE (fac_course_id, prof_sub_id);
 ]   ALTER TABLE ONLY public.curriculum DROP CONSTRAINT curriculum_fac_course_id_prof_sub_id_key;
       public            postgres    false    232    232            �           2606    33925    curriculum curriculum_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.curriculum
    ADD CONSTRAINT curriculum_pkey PRIMARY KEY (curriculum_id);
 D   ALTER TABLE ONLY public.curriculum DROP CONSTRAINT curriculum_pkey;
       public            postgres    false    232            �           2606    33782    deans deans_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.deans
    ADD CONSTRAINT deans_pkey PRIMARY KEY (dean_id);
 :   ALTER TABLE ONLY public.deans DROP CONSTRAINT deans_pkey;
       public            postgres    false    216            �           2606    34097    exam exam_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_pkey PRIMARY KEY (exam_id);
 8   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_pkey;
       public            postgres    false    236            �           2606    34099    exam exam_schedule_id_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_schedule_id_key UNIQUE (schedule_id);
 C   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_schedule_id_key;
       public            postgres    false    236            �           2606    33889 .   fac_course fac_course_course_id_faculty_id_key 
   CONSTRAINT     z   ALTER TABLE ONLY public.fac_course
    ADD CONSTRAINT fac_course_course_id_faculty_id_key UNIQUE (course_id, faculty_id);
 X   ALTER TABLE ONLY public.fac_course DROP CONSTRAINT fac_course_course_id_faculty_id_key;
       public            postgres    false    228    228            �           2606    33887    fac_course fac_course_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.fac_course
    ADD CONSTRAINT fac_course_pkey PRIMARY KEY (fac_course_id);
 D   ALTER TABLE ONLY public.fac_course DROP CONSTRAINT fac_course_pkey;
       public            postgres    false    228            �           2606    33808 (   fac_dean fac_dean_dean_id_faculty_id_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.fac_dean
    ADD CONSTRAINT fac_dean_dean_id_faculty_id_key UNIQUE (dean_id, faculty_id);
 R   ALTER TABLE ONLY public.fac_dean DROP CONSTRAINT fac_dean_dean_id_faculty_id_key;
       public            postgres    false    218    218            �           2606    33806    fac_dean fac_dean_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fac_dean
    ADD CONSTRAINT fac_dean_pkey PRIMARY KEY (fac_dean);
 @   ALTER TABLE ONLY public.fac_dean DROP CONSTRAINT fac_dean_pkey;
       public            postgres    false    218            �           2606    33768    faculties faculties_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (faculty_id);
 B   ALTER TABLE ONLY public.faculties DROP CONSTRAINT faculties_pkey;
       public            postgres    false    214            �           2606    33906 (   professor_subject professor_subject_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.professor_subject
    ADD CONSTRAINT professor_subject_pkey PRIMARY KEY (prof_sub_id);
 R   ALTER TABLE ONLY public.professor_subject DROP CONSTRAINT professor_subject_pkey;
       public            postgres    false    230            �           2606    33908 ?   professor_subject professor_subject_subject_id_professor_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.professor_subject
    ADD CONSTRAINT professor_subject_subject_id_professor_id_key UNIQUE (subject_id, professor_id);
 i   ALTER TABLE ONLY public.professor_subject DROP CONSTRAINT professor_subject_subject_id_professor_id_key;
       public            postgres    false    230    230            �           2606    33846    professors professors_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pkey PRIMARY KEY (professor_id);
 D   ALTER TABLE ONLY public.professors DROP CONSTRAINT professors_pkey;
       public            postgres    false    222            �           2606    33860    programs programs_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (program_id);
 @   ALTER TABLE ONLY public.programs DROP CONSTRAINT programs_pkey;
       public            postgres    false    224            �           2606    33868 $   student_program student_program_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.student_program
    ADD CONSTRAINT student_program_pkey PRIMARY KEY (stud_prog_id);
 N   ALTER TABLE ONLY public.student_program DROP CONSTRAINT student_program_pkey;
       public            postgres    false    226            �           2606    33870 9   student_program student_program_program_id_student_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.student_program
    ADD CONSTRAINT student_program_program_id_student_id_key UNIQUE (program_id, student_id);
 c   ALTER TABLE ONLY public.student_program DROP CONSTRAINT student_program_program_id_student_id_key;
       public            postgres    false    226    226            �           2606    33754    students students_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    210            �           2606    33832    subjects subjects_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (subject_id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public            postgres    false    220                       2606    34086 2   course_schedule course_schedule_curriculum_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_schedule
    ADD CONSTRAINT course_schedule_curriculum_id_fkey FOREIGN KEY (curriculum_id) REFERENCES public.curriculum(curriculum_id);
 \   ALTER TABLE ONLY public.course_schedule DROP CONSTRAINT course_schedule_curriculum_id_fkey;
       public          postgres    false    232    3319    234            
           2606    34081 /   course_schedule course_schedule_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_schedule
    ADD CONSTRAINT course_schedule_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 Y   ALTER TABLE ONLY public.course_schedule DROP CONSTRAINT course_schedule_student_id_fkey;
       public          postgres    false    234    210    3287                       2606    33928 (   curriculum curriculum_fac_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.curriculum
    ADD CONSTRAINT curriculum_fac_course_id_fkey FOREIGN KEY (fac_course_id) REFERENCES public.fac_course(fac_course_id);
 R   ALTER TABLE ONLY public.curriculum DROP CONSTRAINT curriculum_fac_course_id_fkey;
       public          postgres    false    232    3311    228            	           2606    33933 &   curriculum curriculum_prof_sub_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.curriculum
    ADD CONSTRAINT curriculum_prof_sub_id_fkey FOREIGN KEY (prof_sub_id) REFERENCES public.professor_subject(prof_sub_id);
 P   ALTER TABLE ONLY public.curriculum DROP CONSTRAINT curriculum_prof_sub_id_fkey;
       public          postgres    false    3313    230    232                       2606    34100    exam exam_schedule_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_schedule_id_fkey FOREIGN KEY (schedule_id) REFERENCES public.course_schedule(schedule_id);
 D   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_schedule_id_fkey;
       public          postgres    false    236    234    3321                       2606    33890 $   fac_course fac_course_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fac_course
    ADD CONSTRAINT fac_course_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);
 N   ALTER TABLE ONLY public.fac_course DROP CONSTRAINT fac_course_course_id_fkey;
       public          postgres    false    212    3289    228                       2606    33895 %   fac_course fac_course_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fac_course
    ADD CONSTRAINT fac_course_faculty_id_fkey FOREIGN KEY (faculty_id) REFERENCES public.faculties(faculty_id);
 O   ALTER TABLE ONLY public.fac_course DROP CONSTRAINT fac_course_faculty_id_fkey;
       public          postgres    false    3291    228    214                        2606    33809    fac_dean fac_dean_dean_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fac_dean
    ADD CONSTRAINT fac_dean_dean_id_fkey FOREIGN KEY (dean_id) REFERENCES public.deans(dean_id);
 H   ALTER TABLE ONLY public.fac_dean DROP CONSTRAINT fac_dean_dean_id_fkey;
       public          postgres    false    218    216    3293                       2606    33814 !   fac_dean fac_dean_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fac_dean
    ADD CONSTRAINT fac_dean_faculty_id_fkey FOREIGN KEY (faculty_id) REFERENCES public.faculties(faculty_id);
 K   ALTER TABLE ONLY public.fac_dean DROP CONSTRAINT fac_dean_faculty_id_fkey;
       public          postgres    false    214    218    3291                       2606    33914 5   professor_subject professor_subject_professor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.professor_subject
    ADD CONSTRAINT professor_subject_professor_id_fkey FOREIGN KEY (professor_id) REFERENCES public.professors(professor_id);
 _   ALTER TABLE ONLY public.professor_subject DROP CONSTRAINT professor_subject_professor_id_fkey;
       public          postgres    false    222    3301    230                       2606    33909 3   professor_subject professor_subject_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.professor_subject
    ADD CONSTRAINT professor_subject_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);
 ]   ALTER TABLE ONLY public.professor_subject DROP CONSTRAINT professor_subject_subject_id_fkey;
       public          postgres    false    230    3299    220                       2606    33871 /   student_program student_program_program_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_program
    ADD CONSTRAINT student_program_program_id_fkey FOREIGN KEY (program_id) REFERENCES public.programs(program_id);
 Y   ALTER TABLE ONLY public.student_program DROP CONSTRAINT student_program_program_id_fkey;
       public          postgres    false    3303    224    226                       2606    33876 /   student_program student_program_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_program
    ADD CONSTRAINT student_program_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 Y   ALTER TABLE ONLY public.student_program DROP CONSTRAINT student_program_student_id_fkey;
       public          postgres    false    3287    210    226            �   �  x�%��q�0C��b2"��K��# 2>�ق(,����Sn_�� ?��8{-/NZ�ٰ�4m�����t��@u���s��إzN�]�<τ� �i��<�Ե[�9�����)܁�]�'��G�߲w�8�{�M)\<z�G=>R�}px`�~��"�ML��X
gR�m����]�G,�����gDs�9L��"MC��1#��+^Fzh�rL��1'4.Ơ�?��G����B�C����(F��Q�rJD�{�S�+n��O<,3�QP_�!�ק���,�+[�	ϩ�'z��'�#P��z�Q�=5.F�cb��*&@VU�н-Ʋ�Ո����ޭ>��8����ڃv���0c�x�a�X}u��Z�fq�7�1�8G =f��>���klTZF/�b�5!n�$���X����9��8��,K�����Zl�]-F�]�b�^�1v�7���osB;��cfk���      �      x�3���2����2�\&��a\1z\\\ 6e      �   �   x�%��q@1CϨ����^�����3y�HE/�R�uL�F�p��%x�������ox�����H�(
��1�t�")���[��ՖˎQh�<��\ю��>����M��J$�j���Wߥ<)�{R6j����,�\n���I����n]"�EWQ"*��5�1������=���'�c�X����_Q�Z`�(y�eT����H�Ǻ��p�'����q�ex�0~ ��D�      �   >   x�3��(�M+J��t,�(���2��*����t�O���L�2�,��+�,-*�H-����� ���      �   �  x��Q�!���lĻ���c�J�8Ҵ-.�_[Z����#w��R)vu�i��������	sT\�8�m�����ԲO"�A�̑��	z�Z����궵�|��V+�
��]�ղ�
�J��m=��'�f���z/�7�s��v�S�̾��.O@L���츠KPv����']�:�+��)A�z��SL��L�R�C�V�r�(�M����*&�(AW=�X�O9Q�+�r.A/��^y�3ʓQ�,�*'�,A/�r����g���.AO�֝�Gw�ohzS�U�ٝ���'`Q�j<��&�"��\LZ[�t�!(&"�e�jR���,���,�	��>A�4�����7�o�y���zc�1k�zc��gf�	{=      �   <   x����@��Q1q�����<rWW����j��N{��ᶇ�>��ܿ�5���	�      �      x�3�4�4�bNc.cNcN#�=... !��      �   "   x�3���2��I,�2���,.�/������ RJ+      �   A   x�̻�0 ���q�g�����*�X(�X��Fc��T��d�],��M37�4�g��i>��Ԗ      �   �   x���n�@D��� ����Hp@"��p1Y,m"���qFzo&`%%Aͣt4C���h���#}b-��|�A��Es�ģg��])��Xb�~Z����ǃ����:�	�P�E롽u�}�OS�n8�"Q��G�M�`g~�Q���|l��+�6���_N��/�t��?�
@�      �   e   x�3���+)�O)M.���S(�Wp��-(-I-RN�L�KN�4650�2�P��%���9
A�9`f1'P��1�cQIfZfr&P.�2''3l�9ȴ=... E�(�      �   N   x����0B�f�*�O�]��Y2z�Y�� �3A�6��H��,�'<�7*�F��y���݂�������= ~�$�      �   j  x�-Q�n�0<��_�����TI[$qa�z�ee���i�@Jv���J� ���XzT-�}��j<JR��x��Ǝ�"���tKTYJ��!��"'���3�	\�y��}�9��4xk��$|g�8N�;����|=q��<� xwo������S��(5#ކZ�\����w~�'naRùpBX8�MX"���A�4��iV,�Y3�o�_Z�M,�[�k1�
�����~K�5��H�;��ȳ�-~*���_v��?�[I��vX��yl�<���R�톊R?#|��Qe-���څ�֘PuN<�h[�k�<c�DJk?�{9fU���q��GIk>}�
{jV�֒�u�kT��-�o���?7ιO��4      �   �   x�e��n�0 g�+����a�F��
�Х�b�6=
�q��/� ]:
w<R>j�O�� �Yk6p���,��˵҄>��P*˘&hUz^����}�%ʂ��$��f���']�D3��`hv����3G������͓T/<�
�ƚ�p��g��0
���$
��G�m4��[�Z���%�5W�}]�,tZYλ��\g�����7��j��'����,˰����1��c�     