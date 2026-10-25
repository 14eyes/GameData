require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010602_TriggerIn = class("Q4010602_TriggerIn", GadgetActorProxy)
Q4010602_TriggerIn.defaultAlias = "Q4010602_TriggerIn"
local Q40106ClientConfig = require("Quest/Client/Q40106ClientConfig")

local this
local subIDs = Q40106ClientConfig.SubIDs
local npcs = Q40106ClientConfig.Npcs
local points = Q40106ClientConfig.Points
local datas = Q40106ClientConfig.Datas

function Q4010602_TriggerIn:Q4010602_TriggerOut2()
    print("Q4010602_TriggerOut2")
end

function Q4010602_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010602_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.Q4010602_TriggerOut2, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010602_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:CreateActorWithPos("Q4010602_TriggerOut", "Actor/Gadget/Q4010602_TriggerOut", 70900002, 0, points.TPos_Q4010602_TriggerOut.pos, points.TPos_Q4010602_TriggerOut.rot, true, false)
    this:DestroySelf()
end

function Q4010602_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010602_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

return Q4010602_TriggerIn
