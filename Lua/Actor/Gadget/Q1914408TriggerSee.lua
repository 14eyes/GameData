require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914408TriggerSee = class("Q1914408TriggerSee", GadgetActorProxy)
Q1914408TriggerSee.defaultAlias = "Q1914408TriggerSee"
local Q19144ClientConfig = require("Quest/Client/Q19144ClientConfig")

local subIDs = Q19144ClientConfig.SubIDs
local npcs = Q19144ClientConfig.Npcs
local datas = Q19144ClientConfig.Datas

function Q1914408TriggerSee:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914408TriggerSee:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914408TriggerSee:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19144"):NarratorOnlyTaskByData(datas.NarratorWithId2, nil, 19144)
    self:DestroySelf()
end

function Q1914408TriggerSee:TriggerOut()
    print("TriggerOut")
end

return Q1914408TriggerSee
