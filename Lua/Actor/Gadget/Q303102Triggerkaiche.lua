require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303102Triggerkaiche = class("Q303102Triggerkaiche", GadgetActorProxy)
Q303102Triggerkaiche.defaultAlias = "Q303102Triggerkaiche"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303102Triggerkaiche:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303102Triggerkaiche:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303102Triggerkaiche:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 3031)
    this:DestroySelf()
end

function Q303102Triggerkaiche:TriggerOut()
    print("TriggerOut")
end

return Q303102Triggerkaiche
