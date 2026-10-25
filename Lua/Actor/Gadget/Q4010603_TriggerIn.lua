require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010603_TriggerIn = class("Q4010603_TriggerIn", GadgetActorProxy)
Q4010603_TriggerIn.defaultAlias = "Q4010603_TriggerIn"
local Q40106ClientConfig = require("Quest/Client/Q40106ClientConfig")

local this
local subIDs = Q40106ClientConfig.SubIDs
local npcs = Q40106ClientConfig.Npcs
local points = Q40106ClientConfig.Points
local datas = Q40106ClientConfig.Datas

function Q4010603_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010603_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010603_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:CreateActorWithPos("Q4010603_TriggerOut", "Actor/Gadget/Q4010603_TriggerOut", 70900002, 0, points.TPos_Q4010603_TriggerOut.pos, points.TPos_Q4010603_TriggerOut.rot, true, false)
    this:DestroySelf()
end

function Q4010603_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010603_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010603_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010603_TriggerIn
