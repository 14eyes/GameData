require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73016Trigger1 = class("Q73016Trigger1", GadgetActorProxy)
Q73016Trigger1.defaultAlias = "Q73016Trigger1"
local Q73016ClientConfig = require("Quest/Client/Q73016ClientConfig")

local this
local subIDs = Q73016ClientConfig.SubIDs
local npcs = Q73016ClientConfig.Npcs
local datas = Q73016ClientConfig.Datas

function Q73016Trigger1:OnPostDataPrepare()
    print("[MainId: 73016][Trigger: Q73016Trigger1] OnPostDataPrepare")
    this = self
end

function Q73016Trigger1:OnPostComponentPrepare()
    print("[MainId: 73016][Trigger: Q73016Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73016Trigger1:TriggerIn()
    print("[MainId: 73016][Trigger: Q73016Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7301609)
    this:DestroySelf()
end

function Q73016Trigger1:TriggerOut()
    print("[MainId: 73016][Trigger: Q73016Trigger1] TriggerOut")
end

return Q73016Trigger1
