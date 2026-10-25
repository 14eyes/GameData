require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300109Trigger_Narrator_Bahram = class("Q7300109Trigger_Narrator_Bahram", GadgetActorProxy)
Q7300109Trigger_Narrator_Bahram.defaultAlias = "Q7300109Trigger_Narrator_Bahram"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q7300109Trigger_Narrator_Bahram:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Bahram] OnPostDataPrepare")
    this = self
end

function Q7300109Trigger_Narrator_Bahram:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Bahram] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300109Trigger_Narrator_Bahram:TriggerIn()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Bahram] TriggerIn")
    actorMgr:GetActor(npcs.Npc20598Data.alias):CreateSpeechBubbleTask(npcs.Npc20598Data.id, 4, 730019916, false, 0, 0)
    actorMgr:GetActor("73001"):NarratorOnlyTask(datas.Narrator_BahramTalk, nil, "")
    this:DestroySelf()
end

function Q7300109Trigger_Narrator_Bahram:TriggerOut()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Bahram] TriggerOut")
end

return Q7300109Trigger_Narrator_Bahram
