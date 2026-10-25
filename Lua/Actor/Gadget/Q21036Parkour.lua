require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21036Parkour = class("Q21036Parkour", GadgetActorProxy)
Q21036Parkour.defaultAlias = "Q21036Parkour"
local Q21036ClientConfig = require("Quest/Client/Q21036ClientConfig")

local this
local subIDs = Q21036ClientConfig.SubIDs
local npcs = Q21036ClientConfig.Npcs
local datas = Q21036ClientConfig.Datas

function Q21036Parkour:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q21036Parkour:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q21036Parkour:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21036"):NarratorOnlyTaskByData(datas.NarratorWithIdPK)
    this:DestroySelf()
end

function Q21036Parkour:PreTriggerIn()
    print("PreTriggerIn")
end

function Q21036Parkour:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q21036Parkour:TriggerOut()
    print("TriggerOut")
end

return Q21036Parkour
