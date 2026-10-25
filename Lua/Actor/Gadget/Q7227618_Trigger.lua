require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227618_Trigger = class("Q7227618_Trigger", GadgetActorProxy)
Q7227618_Trigger.defaultAlias = "Q7227618_Trigger"
local Q72276ClientConfig = require("Quest/Client/Q72276ClientConfig")

local subIDs = Q72276ClientConfig.SubIDs
local npcs = Q72276ClientConfig.Npcs
local datas = Q72276ClientConfig.Datas

function Q7227618_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227618_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227618_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72276")
    actor:CreateQuestNpcById(7227618, npcs.PaimonData.id, 1)
    actor:RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q7227618_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7227618_Trigger
