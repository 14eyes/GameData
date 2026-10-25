require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501004Trigger = class("Q1501004Trigger", GadgetActorProxy)
Q1501004Trigger.defaultAlias = "Q1501004Trigger"
local Q15010ClientConfig = require("Quest/Client/Q15010ClientConfig")

local this
local subIDs = Q15010ClientConfig.SubIDs
local datas = Q15010ClientConfig.Datas
local npcs = Q15010ClientConfig.Npcs
local points = Q15010ClientConfig.Points

function Q1501004Trigger:OnPostDataPrepare()
    print("Q1501004Trigger - OnPostDataPrepare")
    this = self
end

function Q1501004Trigger:OnPostComponentPrepare()
    print("Q1501004Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(45, 36, 35, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15010)
end

function Q1501004Trigger:TriggerIn()
    print("Q1501004Trigger - TriggerIn")
    actorMgr:GetActor("15010"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("15010"):CreateQuestNpcById(1501004, npcs.Npc1087.id, 0, false, 0)
        actorMgr:GetActor("15010"):RequestInteraction(npcs.Npc1087.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1501004Trigger:PreTriggerIn()
    print("Q1501004Trigger - PreTriggerIn")
end

function Q1501004Trigger:LightUpTriggerIn()
    print("Q1501004Trigger - LightUpTriggerIn")
end

function Q1501004Trigger:TriggerOut()
    print("Q1501004Trigger - TriggerOut")
end

return Q1501004Trigger
