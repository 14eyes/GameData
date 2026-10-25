require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300106Trigger_Narrator_RanaReach = class("Q7300106Trigger_Narrator_RanaReach", GadgetActorProxy)
Q7300106Trigger_Narrator_RanaReach.defaultAlias = "Q7300106Trigger_Narrator_RanaReach"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q7300106Trigger_Narrator_RanaReach:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q7300106Trigger_Narrator_RanaReach] OnPostDataPrepare")
    this = self
end

function Q7300106Trigger_Narrator_RanaReach:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q7300106Trigger_Narrator_RanaReach] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300106Trigger_Narrator_RanaReach:TriggerIn()
    print("[MainId: 73001][Trigger: Q7300106Trigger_Narrator_RanaReach] TriggerIn")
    actorUtils.FinishQuestID(false, 7300121)
    this:DestroySelf()
end

function Q7300106Trigger_Narrator_RanaReach:TriggerOut()
    print("[MainId: 73001][Trigger: Q7300106Trigger_Narrator_RanaReach] TriggerOut")
end

return Q7300106Trigger_Narrator_RanaReach
