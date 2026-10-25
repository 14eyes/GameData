require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19162Trigger3 = class("Q19162Trigger3", GadgetActorProxy)
Q19162Trigger3.defaultAlias = "Q19162Trigger3"
local Q19162ClientConfig = require("Quest/Client/Q19162ClientConfig")

local this
local subIDs = Q19162ClientConfig.SubIDs
local npcs = Q19162ClientConfig.Npcs
local points = Q19162ClientConfig.Points
local datas = Q19162ClientConfig.Datas

function Q19162Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19162Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19162Trigger3:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1916207)
    this:DestroySelf()
end

function Q19162Trigger3:PreTriggerIn()
    print("PreTriggerIn")
end

function Q19162Trigger3:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q19162Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19162Trigger3
