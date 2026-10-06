
-- Run this in Supabase SQL Editor
create table if not exists public.studios (id uuid default gen_random_uuid() primary key, code text unique not null, name text, created_at timestamp default now());
create table if not exists public.clients (id uuid default gen_random_uuid() primary key, studio_code text, name text, phone text, plan text, status text default 'Active', created_at timestamp default now());
create table if not exists public.checkins (id uuid default gen_random_uuid() primary key, client_id uuid references clients(id), weight numeric, notes text, created_at timestamp default now());

insert into public.studios (code,name) values ('BMPLANET','BM Planet Studios') on conflict (code) do nothing;

alter table public.studios enable row level security;
alter table public.clients enable row level security;
alter table public.checkins enable row level security;

drop policy if exists "allow_all" on public.studios; create policy "allow_all" on public.studios for all using (true) with check (true);
drop policy if exists "allow_all" on public.clients; create policy "allow_all" on public.clients for all using (true) with check (true);
drop policy if exists "allow_all" on public.checkins; create policy "allow_all" on public.checkins for all using (true) with check (true);
