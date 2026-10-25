require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73281Triggertest = class("Q73281Triggertest", GadgetActorProxy)
Q73281Triggertest.defaultAlias = "Q73281Triggertest"
local Q73281ClientConfig = require("Quest/Client/Q73281ClientConfig")

local this
local subIDs = Q73281ClientConfig.SubIDs
local npcs = Q73281ClientConfig.Npcs
local datas = Q73281ClientConfig.Datas

function Q73281Triggertest:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73281Triggertest:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73281Triggertest:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328137)
    this:DestroySelf()
end

function Q73281Triggertest:TriggerOut()
    print("TriggerOut")
end

return Q73281Triggertest
