require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300109Trigger_ChildrunReach = class("Q7300109Trigger_ChildrunReach", GadgetActorProxy)
Q7300109Trigger_ChildrunReach.defaultAlias = "Q7300109Trigger_ChildrunReach"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q7300109Trigger_ChildrunReach:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q7300109Trigger_ChildrunReach] OnPostDataPrepare")
    this = self
end

function Q7300109Trigger_ChildrunReach:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q7300109Trigger_ChildrunReach] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300109Trigger_ChildrunReach:TriggerIn()
    print("[MainId: 73001][Trigger: Q7300109Trigger_ChildrunReach] TriggerIn")
    actorUtils.FinishQuestID(false, 7300109)
    this:DestroySelf()
end

function Q7300109Trigger_ChildrunReach:TriggerOut()
    print("[MainId: 73001][Trigger: Q7300109Trigger_ChildrunReach] TriggerOut")
end

return Q7300109Trigger_ChildrunReach
