require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40012PuppetTrigger = class("Q40012PuppetTrigger", GadgetActorProxy)
Q40012PuppetTrigger.defaultAlias = "Q40012PuppetTrigger"
local Q40012ClientConfig = require("Quest/Client/Q40012ClientConfig")

local subIDs = Q40012ClientConfig.SubIDs
local npcs = Q40012ClientConfig.Npcs
local gadgets = Q40012ClientConfig.Gadgets
local datas = Q40012ClientConfig.Datas

function Q40012PuppetTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40012PuppetTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40012PuppetTrigger:TriggerIn()
    print("TriggerIn")
end

function Q40012PuppetTrigger:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("40012")
    actor:FinishQuestID(true, 4001209)
    actor:ClearNarratorTask()
    self:DestroySelf()
end

return Q40012PuppetTrigger
