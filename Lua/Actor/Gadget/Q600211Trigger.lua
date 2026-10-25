require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600211Trigger = class("Q600211Trigger", GadgetActorProxy)
Q600211Trigger.defaultAlias = "Q600211Trigger"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600211Trigger:OnPostDataPrepare()
    print("Q600211Trigger - OnPostDataPrepare")
    this = self
end

function Q600211Trigger:OnPostComponentPrepare()
    print("Q600211Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(56, 7, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600211Trigger:TriggerIn()
    print("Q600211Trigger - TriggerIn")
    actorMgr:GetActor("6002"):ShowBlackScreen(0.3, 0.3, 0.3, function(arg1)
        actorMgr:GetActor("6002"):CreateQuestNpcById(600211, npcs.Npc1317.id, 0, false, 0)
        actorMgr:GetActor("6002"):RequestInteraction(npcs.Npc1317.alias, "", true)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q600211Trigger:PreTriggerIn()
    print("Q600211Trigger - PreTriggerIn")
end

function Q600211Trigger:LightUpTriggerIn()
    print("Q600211Trigger - LightUpTriggerIn")
end

function Q600211Trigger:TriggerOut()
    print("Q600211Trigger - TriggerOut")
end

return Q600211Trigger
