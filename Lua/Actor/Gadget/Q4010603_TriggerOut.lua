require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010603_TriggerOut = class("Q4010603_TriggerOut", GadgetActorProxy)
Q4010603_TriggerOut.defaultAlias = "Q4010603_TriggerOut"
local Q40106ClientConfig = require("Quest/Client/Q40106ClientConfig")

local this
local subIDs = Q40106ClientConfig.SubIDs
local npcs = Q40106ClientConfig.Npcs
local points = Q40106ClientConfig.Points
local datas = Q40106ClientConfig.Datas

function Q4010603_TriggerOut:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010603_TriggerOut:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010603_TriggerOut:TriggerIn()
    print("TriggerIn")
end

function Q4010603_TriggerOut:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010603_TriggerOut:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010603_TriggerOut:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 4010603)
    this:DestroySelf()
end

return Q4010603_TriggerOut
