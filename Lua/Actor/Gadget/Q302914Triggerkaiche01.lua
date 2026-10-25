require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302914Triggerkaiche01 = class("Q302914Triggerkaiche01", GadgetActorProxy)
Q302914Triggerkaiche01.defaultAlias = "Q302914Triggerkaiche01"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302914Triggerkaiche01:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302914Triggerkaiche01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302914Triggerkaiche01:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3029"):NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 3029)
    this:DestroySelf()
end

function Q302914Triggerkaiche01:TriggerOut()
    print("TriggerOut")
end

return Q302914Triggerkaiche01
