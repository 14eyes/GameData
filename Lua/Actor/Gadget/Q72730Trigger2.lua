require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72730Trigger2 = class("Q72730Trigger2", GadgetActorProxy)
Q72730Trigger2.defaultAlias = "Q72730Trigger2"
local Q72730ClientConfig = require("Quest/Client/Q72730ClientConfig")

local this
local subIDs = Q72730ClientConfig.SubIDs
local npcs = Q72730ClientConfig.Npcs
local datas = Q72730ClientConfig.Datas

function Q72730Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q72730Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q72730Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72730"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("72730")
        actor:CreateQuestNpcById(7273007, npcs.Npc13019Data.id, 0)
        actor:RequestInteraction(npcs.Npc13019Data.alias)
    end, nil, nil, "UI_ACTIVITY_ELECTROHERCULESBATTLE_EXITFIELD", false, false)

    this:DestroySelf()
end

function Q72730Trigger2:PreTriggerIn()
    print("PreTriggerIn")
end

function Q72730Trigger2:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q72730Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q72730Trigger2
