require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501409_Trigger_In_01 = class("Q501409_Trigger_In_01", GadgetActorProxy)
Q501409_Trigger_In_01.defaultAlias = "Q501409_Trigger_In_01"
local Q5014ClientConfig = require("Quest/Client/Q5014ClientConfig")

local this
local subIDs = Q5014ClientConfig.SubIDs
local datas = Q5014ClientConfig.Datas
local npcs = Q5014ClientConfig.Npcs
local points = Q5014ClientConfig.Points

function Q501409_Trigger_In_01:OnPostDataPrepare()
    print("Q501409_Trigger_In_01 - OnPostDataPrepare")
    this = self
end

function Q501409_Trigger_In_01:OnPostComponentPrepare()
    print("Q501409_Trigger_In_01 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5014)
end

function Q501409_Trigger_In_01:TriggerIn()
    print("Q501409_Trigger_In_01 - TriggerIn")
    actorMgr:GetActor("5014"):SetQuestVarByMainId(4, 1)
    this:DestroySelf()
end

function Q501409_Trigger_In_01:PreTriggerIn()
    print("Q501409_Trigger_In_01 - PreTriggerIn")
end

function Q501409_Trigger_In_01:LightUpTriggerIn()
    print("Q501409_Trigger_In_01 - LightUpTriggerIn")
end

function Q501409_Trigger_In_01:TriggerOut()
    print("Q501409_Trigger_In_01 - TriggerOut")
end

return Q501409_Trigger_In_01
