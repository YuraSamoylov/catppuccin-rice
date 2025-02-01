#!/usr/bin/env bash

wallpapers_dir="$HOME/Pictures/wallpapers/"
random_img=$(ls ${wallpapers_dir} | shuf | head -1)
swaybg -i "${wallpapers_dir}${random_img}"

wallpaper_script="$HOME/.config/hypr/scripts/wallpapers.sh"
wallpaper_path="${wallpapers_dir}${random_img}"

echo "#!/usr/bin/env bash\n\nswaybg -i \"${wallpaper_path}\"" > wallpaper_script
