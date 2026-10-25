require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603418Trigger = class("Q603418Trigger", GadgetActorProxy)
Q603418Trigger.defaultAlias = "Q603418Trigger"
local Q6034ClientConfig = require("Quest/Client/Q6034ClientConfig")

local this
local subIDs = Q6034ClientConfig.SubIDs
local datas = Q6034ClientConfig.Datas
local npcs = Q6034ClientConfig.Npcs
local points = Q6034ClientConfig.Points

function Q603418Trigger:OnPostDataPrepare()
    print("Q603418Trigger - OnPostDataPrepare")
    this = self
end

function Q603418Trigger:OnPostComponentPrepare()
    print("Q603418Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6034)
end

function Q603418Trigger:TriggerIn()
    print("Q603418Trigger - TriggerIn")
    actorMgr:GetActor("6034"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("6034"):CreateQuestNpcById(603418, 16975, 0, false, 0)
        actorMgr:GetActor("6034"):CancelRangeStoryByQuest(110603401)
        actorMgr:GetActor("6034"):RequestInteraction(npcs.Npc16975.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q603418Trigger:PreTriggerIn()
    print("Q603418Trigger - PreTriggerIn")
end

function Q603418Trigger:LightUpTriggerIn()
    print("Q603418Trigger - LightUpTriggerIn")
end

function Q603418Trigger:TriggerOut()
    print("Q603418Trigger - TriggerOut")
end

return Q603418Trigger
