require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300109Trigger_Narrator_Jehiet = class("Q7300109Trigger_Narrator_Jehiet", GadgetActorProxy)
Q7300109Trigger_Narrator_Jehiet.defaultAlias = "Q7300109Trigger_Narrator_Jehiet"
local Q73001ClientConfig = require("Quest/Client/Q73001ClientConfig")

local this
local subIDs = Q73001ClientConfig.SubIDs
local npcs = Q73001ClientConfig.Npcs
local datas = Q73001ClientConfig.Datas

function Q7300109Trigger_Narrator_Jehiet:OnPostDataPrepare()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Jehiet] OnPostDataPrepare")
    this = self
end

function Q7300109Trigger_Narrator_Jehiet:OnPostComponentPrepare()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Jehiet] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300109Trigger_Narrator_Jehiet:TriggerIn()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Jehiet] TriggerIn")
    actorMgr:GetActor(npcs.Npc20735Data.alias):CreateSpeechBubbleTask(npcs.Npc20735Data.id, 730019915, 4, false, 0, 0)
    actorMgr:GetActor("73001"):NarratorOnlyTask(datas.Narrator_JehietTalk, nil, "")
    this:DestroySelf()
end

function Q7300109Trigger_Narrator_Jehiet:TriggerOut()
    print("[MainId: 73001][Trigger: Q7300109Trigger_Narrator_Jehiet] TriggerOut")
end

return Q7300109Trigger_Narrator_Jehiet
