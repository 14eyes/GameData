require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22020Trigger = class("Q22020Trigger", GadgetActorProxy)
Q22020Trigger.defaultAlias = "Q22020Trigger"
local Q22020ClientConfig = require("Quest/Client/Q22020ClientConfig")

local subIDs = Q22020ClientConfig.SubIDs
local npcs = Q22020ClientConfig.Npcs
local datas = Q22020ClientConfig.Datas

function Q22020Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22020Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22020Trigger:TriggerIn()
    print("TriggerIn")
    self:NarratorOnlyTaskLegacy(datas.Kaiche, nil, "", 22020)
end

function Q22020Trigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q22020Trigger
