require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007ChairTalkTrigger = class("Q3007ChairTalkTrigger", GadgetActorProxy)
Q3007ChairTalkTrigger.defaultAlias = "Q3007ChairTalkTrigger"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007ChairTalkTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007ChairTalkTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007ChairTalkTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300711)
    self:DestroySelf()
end

function Q3007ChairTalkTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3007ChairTalkTrigger
