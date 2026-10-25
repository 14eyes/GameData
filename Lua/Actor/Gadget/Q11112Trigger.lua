require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11112Trigger = class("Q11112Trigger", GadgetActorProxy)
Q11112Trigger.defaultAlias = "Q11112Trigger"
local Q11112ClientConfig = require("Quest/Client/Q11112ClientConfig")

local mainID = Q11112ClientConfig.MainID
local actorAlias = Q11112ClientConfig.ActorAlias
local subIDs = Q11112ClientConfig.SubIDs
local npcs = Q11112ClientConfig.Npcs
local datas = Q11112ClientConfig.Datas

function Q11112Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11112Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11112Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10366Data.alias)
    actorMgr:DestroyEntityActor(datas.Q11112Trigger_.alias, 3, false)
end

function Q11112Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11112Trigger
