require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300107Trigger_fail = class("Q7300107Trigger_fail", GadgetActorProxy)
Q7300107Trigger_fail.defaultAlias = "Q7300107Trigger_fail"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q7300107Trigger_fail:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q7300107Trigger_fail] OnPostDataPrepare")
    this = self
end

function Q7300107Trigger_fail:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q7300107Trigger_fail] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(39.74788, 62.52807, 9.625676, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300107Trigger_fail:TriggerIn()
    print("[MainId: 73001][Trigger: Q7300107Trigger_fail] TriggerIn")
end

function Q7300107Trigger_fail:TriggerOut()
    print("[MainId: 73001][Trigger: Q7300107Trigger_fail] TriggerOut")
    actorUtils.FinishQuestID(true, 7300107)
    this:DestroySelf()
end

return Q7300107Trigger_fail
