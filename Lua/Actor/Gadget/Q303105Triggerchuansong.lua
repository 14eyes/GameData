require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303105Triggerchuansong = class("Q303105Triggerchuansong", GadgetActorProxy)
Q303105Triggerchuansong.defaultAlias = "Q303105Triggerchuansong"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303105Triggerchuansong:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303105Triggerchuansong:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q303105Triggerchuansong:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):TransmitPlayerByQuestId(303105, 3)
end

function Q303105Triggerchuansong:PreTriggerIn()
    print("PreTriggerIn")
end

function Q303105Triggerchuansong:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q303105Triggerchuansong:TriggerOut()
    print("TriggerOut")
end

return Q303105Triggerchuansong
