require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500707trigger = class("Q1500707trigger", GadgetActorProxy)
Q1500707trigger.defaultAlias = "Q1500707trigger"
local Q15007ClientConfig = require("Quest/Client/Q15007ClientConfig")

local this
local subIDs = Q15007ClientConfig.SubIDs
local datas = Q15007ClientConfig.Datas
local npcs = Q15007ClientConfig.Npcs
local points = Q15007ClientConfig.Points

function Q1500707trigger:OnPostDataPrepare()
    print("Q1500707trigger - OnPostDataPrepare")
    this = self
end

function Q1500707trigger:OnPostComponentPrepare()
    print("Q1500707trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15007)
end

function Q1500707trigger:TriggerIn()
    print("Q1500707trigger - TriggerIn")
    actorMgr:GetActor("15007"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("15007"):RequestInteraction(npcs.Npc14227.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q1500707trigger:PreTriggerIn()
    print("Q1500707trigger - PreTriggerIn")
end

function Q1500707trigger:LightUpTriggerIn()
    print("Q1500707trigger - LightUpTriggerIn")
end

function Q1500707trigger:TriggerOut()
    print("Q1500707trigger - TriggerOut")
end

return Q1500707trigger
