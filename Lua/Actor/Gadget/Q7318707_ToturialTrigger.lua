require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318707_ToturialTrigger = class("Q7318707_ToturialTrigger", GadgetActorProxy)
Q7318707_ToturialTrigger.defaultAlias = "Q7318707_ToturialTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318707_ToturialTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318707_ToturialTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7318707_ToturialTrigger:TriggerIn()
    print("TriggerIn")
    if actorMgr:GetActor("73187"):GetSubQuestState(7302603) ~= 3 then
        local actor = actorMgr:GetActor("73187")
        actor:ClearNarratorTask()
        actor:ShowTutorialDialog(1342)
    end

    this:DestroySelf()
end

function Q7318707_ToturialTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7318707_ToturialTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7318707_ToturialTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318707_ToturialTrigger
