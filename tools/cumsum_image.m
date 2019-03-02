function [ cumsum_image ] = cumsum_image(image)
%CUMSUM_IMAGE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    nch = size(image,3);
    cumsum_image = image;
    if nch == 1
        cumsum_image = cumsum(cumsum(image,1),2);
    elseif nch == 3
        cumsum_image(:,:,1) = cumsum(cumsum(image(:,:,1),1),2);
        cumsum_image(:,:,2) = cumsum(cumsum(image(:,:,2),1),2);
        cumsum_image(:,:,3) = cumsum(cumsum(image(:,:,3),1),2);
    else
        error('Not supported image format');
    end
end

