require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303105Triggerkaiche = class("Q303105Triggerkaiche", GadgetActorProxy)
Q303105Triggerkaiche.defaultAlias = "Q303105Triggerkaiche"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303105Triggerkaiche:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303105Triggerkaiche:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303105Triggerkaiche:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):NarratorOnlyTaskByData(datas.NarratorWithId04, nil, 3031)
    this:DestroySelf()
end

function Q303105Triggerkaiche:TriggerOut()
    print("TriggerOut")
end

return Q303105Triggerkaiche
