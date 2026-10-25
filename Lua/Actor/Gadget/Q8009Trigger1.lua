require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8009Trigger1 = class("Q8009Trigger1", GadgetActorProxy)
Q8009Trigger1.defaultAlias = "Q8009Trigger1"
local Q8009ClientConfig = require("Quest/Client/Q8009ClientConfig")

local this
local subIDs = Q8009ClientConfig.SubIDs
local npcs = Q8009ClientConfig.Npcs
local datas = Q8009ClientConfig.Datas

function Q8009Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8009Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q8009Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 800910)
    actorMgr:GetActor("8009"):NarratorOnlyTaskByData(datas.Narrator_800902, nil, 8009)
    this:DestroySelf()
end

function Q8009Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q8009Trigger1
