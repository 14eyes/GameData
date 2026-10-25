require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12014Trigger_Final = class("Q12014Trigger_Final", GadgetActorProxy)
Q12014Trigger_Final.defaultAlias = "Q12014Trigger_Final"
local Q12014ClientConfig = require("Quest/Client/Q12014ClientConfig")

local this
local subIDs = Q12014ClientConfig.SubIDs
local npcs = Q12014ClientConfig.Npcs
local datas = Q12014ClientConfig.Datas

function Q12014Trigger_Final:OnPostDataPrepare()
    print("[MainId: 12014][Trigger: Q12014Trigger_Final] OnPostDataPrepare")
    this = self
end

function Q12014Trigger_Final:OnPostComponentPrepare()
    print("[MainId: 12014][Trigger: Q12014Trigger_Final] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12014Trigger_Final:TriggerIn()
    print("[MainId: 12014][Trigger: Q12014Trigger_Final] TriggerIn")
end

function Q12014Trigger_Final:TriggerOut()
    print("[MainId: 12014][Trigger: Q12014Trigger_Final] TriggerOut")
    actorMgr:GetActor("12014"):FinishQuestID(false, 1201401)
    this:DestroySelf()
end

return Q12014Trigger_Final
