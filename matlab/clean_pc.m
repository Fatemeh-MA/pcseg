function ptCloud_new = clean_pc(ptCloud)
    xyz_mat = [];
    color_mat = [];
    nrows = size(ptCloud.Location,1);
    ncols = size(ptCloud.Location,2);
    for i = 1:nrows
        disp(i);
        for j = 1:ncols
     if(~isnan( ptCloud.Location(i,j,1)))      
        xyz_mat = [xyz_mat; ptCloud.Location(i,j,1),ptCloud.Location(i,j,2),...
                    ptCloud.Location(i,j,3)];
        color_mat =[color_mat; ptCloud.Color(i,j,1), ptCloud.Color(i,j,2),...
                    ptCloud.Color(i,j,3)];
     end
        end
    end
    ptCloud_new = pointCloud(xyz_mat, 'Color', color_mat);
end