require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302502_NarratorTrigger = class("Q302502_NarratorTrigger", GadgetActorProxy)
Q302502_NarratorTrigger.defaultAlias = "Q302502_NarratorTrigger"
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

local this
local subIDs = Q3025ClientConfig.SubIDs
local npcs = Q3025ClientConfig.Npcs
local datas = Q3025ClientConfig.Datas

function Q302502_NarratorTrigger:OnPostDataPrepare()
    print("[MainId: 3025][Trigger: Q302502_NarratorTrigger] OnPostDataPrepare")
    this = self
end

function Q302502_NarratorTrigger:OnPostComponentPrepare()
    print("[MainId: 3025][Trigger: Q302502_NarratorTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302502_NarratorTrigger:TriggerIn()
    print("[MainId: 3025][Trigger: Q302502_NarratorTrigger] TriggerIn")
    actorMgr:GetActor("3025"):NarratorOnlyTaskByData(datas.Narrator_302501, nil, 3025)
    this:DestroySelf()
end

function Q302502_NarratorTrigger:TriggerOut()
    print("[MainId: 3025][Trigger: Q302502_NarratorTrigger] TriggerOut")
end

return Q302502_NarratorTrigger
