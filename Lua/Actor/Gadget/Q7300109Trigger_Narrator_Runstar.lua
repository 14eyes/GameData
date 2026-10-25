require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300109Trigger_Narrator_Runstar = class("Q7300109Trigger_Narrator_Runstar", GadgetActorProxy)
Q7300109Trigger_Narrator_Runstar.defaultAlias = "Q7300109Trigger_Narrator_Runstar"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q7300109Trigger_Narrator_Runstar:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Runstar] OnPostDataPrepare")
    this = self
end

function Q7300109Trigger_Narrator_Runstar:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Runstar] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300109Trigger_Narrator_Runstar:TriggerIn()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Runstar] TriggerIn")
    actorMgr:GetActor("73001"):NarratorOnlyTask(datas.Narrator_PaimonTalkRun, nil, "")
    this:DestroySelf()
end

function Q7300109Trigger_Narrator_Runstar:TriggerOut()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Runstar] TriggerOut")
end

return Q7300109Trigger_Narrator_Runstar
