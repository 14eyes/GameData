require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7103501kaicheTrigger = class("Q7103501kaicheTrigger", GadgetActorProxy)
Q7103501kaicheTrigger.defaultAlias = "Q7103501kaicheTrigger"
local Q71035ClientConfig = require("Quest/Client/Q71035ClientConfig")

local subIDs = Q71035ClientConfig.SubIDs
local npcs = Q71035ClientConfig.Npcs
local datas = Q71035ClientConfig.Datas

function Q7103501kaicheTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7103501kaicheTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7103501kaicheTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("71035")
    actor:NarratorOnlyTask(datas.NarratorTable, nil, "Tag")
    actor:FinishQuestID(false, 7103501)
    self:DestroySelf()
end

function Q7103501kaicheTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7103501kaicheTrigger
