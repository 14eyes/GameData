require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7352302_TriggerOut = class("Q7352302_TriggerOut", GadgetActorProxy)
Q7352302_TriggerOut.defaultAlias = "Q7352302_TriggerOut"
local Q73523ClientConfig = require("Quest/Client/Q73523ClientConfig")

local this
local subIDs = Q73523ClientConfig.SubIDs
local npcs = Q73523ClientConfig.Npcs
local points = Q73523ClientConfig.Points
local datas = Q73523ClientConfig.Datas

function Q7352302_TriggerOut:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7352302_TriggerOut:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7352302_TriggerOut:TriggerIn()
    print("TriggerIn")
end

function Q7352302_TriggerOut:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7352302_TriggerOut:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7352302_TriggerOut:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 7352302)
    this:DestroySelf()
end

return Q7352302_TriggerOut
