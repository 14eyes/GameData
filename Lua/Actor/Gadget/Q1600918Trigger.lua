require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600918Trigger = class("Q1600918Trigger", GadgetActorProxy)
Q1600918Trigger.defaultAlias = "Q1600918Trigger"
local Q16009ClientConfig = require("Quest/Client/Q16009ClientConfig")

local this
local subIDs = Q16009ClientConfig.SubIDs
local datas = Q16009ClientConfig.Datas
local npcs = Q16009ClientConfig.Npcs
local points = Q16009ClientConfig.Points

function Q1600918Trigger:OnPostDataPrepare()
    print("Q1600918Trigger - OnPostDataPrepare")
    this = self
end

function Q1600918Trigger:OnPostComponentPrepare()
    print("Q1600918Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16009)
end

function Q1600918Trigger:TriggerIn()
    print("Q1600918Trigger - TriggerIn")
    actorMgr:GetActor("16009"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("16009"):CreateQuestNpcByIdWithPos(1600918, npcs.Npc16653.id, 0, {x = 5643.807, y = 227.454, z = 9571.07}, {x = 0, y = 0, z = 0})
        local actor = actorMgr:GetActor("16009")
        local str = "Npc16653"
        local realAlias = actor:GetRealAlias(str)
        actor:WaitEntityReadyCall({realAlias}, function()
            actorMgr:GetActor("16009"):RequestInteraction(str)
        end)

        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q1600918Trigger:PreTriggerIn()
    print("Q1600918Trigger - PreTriggerIn")
end

function Q1600918Trigger:LightUpTriggerIn()
    print("Q1600918Trigger - LightUpTriggerIn")
end

function Q1600918Trigger:TriggerOut()
    print("Q1600918Trigger - TriggerOut")
end

return Q1600918Trigger
