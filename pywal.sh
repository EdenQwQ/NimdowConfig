#!/usr/bin/env bash

wal -i $(sed -n 's/file=//p' ~/.config/nitrogen/bg-saved.cfg) -q -t

PFILE="$HOME/.config/nimdow/config.toml"

. "$HOME/.cache/wal/colors.sh"

BG=`printf "%s\n" "$background"`
FG=`printf "%s\n" "$foreground"`
AC=`printf "%s\n" "$color1"`
C1=`printf "%s\n" "$color1"`
C2=`printf "%s\n" "$color2"`
C3=`printf "%s\n" "$color6"`

sed -i -e "s/barBackgroundColor = .*/barBackgroundColor = \'$BG\'/g" $PFILE
sed -i -e "s/barForegroundColor = .*/barForegroundColor = \'$FG\'/g" $PFILE
sed -i -e "s/barSelectionColor = .*/barSelectionColor = \'$AC\'/g" $PFILE
sed -i -e "s/barUrgentColor = .*/barUrgentColor = \'$C1\'/g" $PFILE
sed -i -e "s/borderUrgentColor = .*/borderUrgentColor = \'$C1\'/g" $PFILE
sed -i -e "s/borderColorUnfocused = .*/borderColorUnfocused = \'$C2\'/g" $PFILE
sed -i -e "s/borderColorFocused = .*/borderColorFocused = \'$C3\'/g" $PFILE

nimdow --reload-config
