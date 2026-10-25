require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7350007Trigger = class("Q7350007Trigger", GadgetActorProxy)
Q7350007Trigger.defaultAlias = "Q7350007Trigger"
local Q73500ClientConfig = require("Quest/Client/Q73500ClientConfig")

local subIDs = Q73500ClientConfig.SubIDs
local npcs = Q73500ClientConfig.Npcs
local gadgets = Q73500ClientConfig.Gadgets
local datas = Q73500ClientConfig.Datas

function Q7350007Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7350007Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7350007Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73500")
    actor:CreateQuestNpcById(7350007, npcs.PaimonData.id, 4)
    actor:RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q7350007Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7350007Trigger
