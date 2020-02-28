#!/bin/sh

release_ctl eval --mfa "Sketchql.Migrator.migrate/1" --argv -- "$@"
