require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600203Trigger = class("Q7600203Trigger", GadgetActorProxy)
Q7600203Trigger.defaultAlias = "Q7600203Trigger"
local Q76002ClientConfig = require("Quest/Client/Q76002ClientConfig")

local this
local subIDs = Q76002ClientConfig.SubIDs
local datas = Q76002ClientConfig.Datas
local npcs = Q76002ClientConfig.Npcs
local points = Q76002ClientConfig.Points

function Q7600203Trigger:OnPostDataPrepare()
    print("Q7600203Trigger - OnPostDataPrepare")
    this = self
end

function Q7600203Trigger:OnPostComponentPrepare()
    print("Q7600203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76002)
end

function Q7600203Trigger:TriggerIn()
    print("Q7600203Trigger - TriggerIn")
    actorMgr:GetActor("76002"):ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        actorMgr:GetActor("76002"):CreateQuestNpcById(7600203, npcs.Npc22019.id, 0, false, 0)
        actorMgr:GetActor("76002"):CreateQuestNpcById(7600203, npcs.Npc22055.id, 0, false, 0)
        actorMgr:GetActor("76002"):RequestInteraction(npcs.Npc22019.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q7600203Trigger:PreTriggerIn()
    print("Q7600203Trigger - PreTriggerIn")
end

function Q7600203Trigger:LightUpTriggerIn()
    print("Q7600203Trigger - LightUpTriggerIn")
end

function Q7600203Trigger:TriggerOut()
    print("Q7600203Trigger - TriggerOut")
end

return Q7600203Trigger
