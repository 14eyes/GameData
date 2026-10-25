require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73016TriggerQ17 = class("Q73016TriggerQ17", GadgetActorProxy)
Q73016TriggerQ17.defaultAlias = "Q73016TriggerQ17"
local Q73016ClientConfig = require("Quest/Client/Q73016ClientConfig")

local this
local subIDs = Q73016ClientConfig.SubIDs
local npcs = Q73016ClientConfig.Npcs
local datas = Q73016ClientConfig.Datas

function Q73016TriggerQ17:OnPostDataPrepare()
    print("[MainId: 73016][Trigger: Q73016TriggerQ17] OnPostDataPrepare")
    this = self
end

function Q73016TriggerQ17:OnPostComponentPrepare()
    print("[MainId: 73016][Trigger: Q73016TriggerQ17] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73016TriggerQ17:TriggerIn()
    print("[MainId: 73016][Trigger: Q73016TriggerQ17] TriggerIn")
    actorUtils.FinishQuestID(false, 7301617)
    this:DestroySelf()
end

function Q73016TriggerQ17:TriggerOut()
    print("[MainId: 73016][Trigger: Q73016TriggerQ17] TriggerOut")
end

return Q73016TriggerQ17
