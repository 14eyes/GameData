require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502403_Trigger = class("Q1502403_Trigger", GadgetActorProxy)
Q1502403_Trigger.defaultAlias = "Q1502403_Trigger"
local Q15024ClientConfig = require("Quest/Client/Q15024ClientConfig")

local this
local subIDs = Q15024ClientConfig.SubIDs
local datas = Q15024ClientConfig.Datas
local npcs = Q15024ClientConfig.Npcs
local points = Q15024ClientConfig.Points

function Q1502403_Trigger:OnPostDataPrepare()
    print("Q1502403_Trigger - OnPostDataPrepare")
    this = self
end

function Q1502403_Trigger:OnPostComponentPrepare()
    print("Q1502403_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15024)
end

function Q1502403_Trigger:TriggerIn()
    print("Q1502403_Trigger - TriggerIn")
    actorMgr:GetActor("15024"):RequestInteraction(npcs.Npc6249.alias, "", true)
    this:DestroySelf()
end

function Q1502403_Trigger:PreTriggerIn()
    print("Q1502403_Trigger - PreTriggerIn")
end

function Q1502403_Trigger:LightUpTriggerIn()
    print("Q1502403_Trigger - LightUpTriggerIn")
end

function Q1502403_Trigger:TriggerOut()
    print("Q1502403_Trigger - TriggerOut")
end

return Q1502403_Trigger
