require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22041Trigger = class("Q22041Trigger", GadgetActorProxy)
Q22041Trigger.defaultAlias = "Q22041Trigger"
local Q22041ClientConfig = require("Quest/Client/Q22041ClientConfig")

local subIDs = Q22041ClientConfig.SubIDs
local npcs = Q22041ClientConfig.Npcs
local datas = Q22041ClientConfig.Datas

function Q22041Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22041Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
end

function Q22041Trigger:TriggerIn()
    print("TriggerIn")
end

function Q22041Trigger:TriggerOut()
    print("TriggerOut")
end

return Q22041Trigger
