require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610052Trigger_pose = class("Q7610052Trigger_pose", GadgetActorProxy)
Q7610052Trigger_pose.defaultAlias = "Q7610052Trigger_pose"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610052Trigger_pose:OnPostDataPrepare()
    print("Q7610052Trigger_pose - OnPostDataPrepare")
    this = self
end

function Q7610052Trigger_pose:OnPostComponentPrepare()
    print("Q7610052Trigger_pose - OnPostComponentPrepare")
    this:AddComponentTrigger(75, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610052Trigger_pose:TriggerIn()
    print("Q7610052Trigger_pose - TriggerIn")
    actorMgr:GetActor("76100"):GetQuestNpcActor(npcs.Npc7608.alias, 76100):DoFreeStyle(1280, true, nil, true, true, false, true)
    actorMgr:GetActor("76100"):GetQuestNpcActor(npcs.Npc7182.alias, 76100):DoFreeStyle(4122, true, nil, true, true, false, true)
    actorMgr:GetActor("76100"):GetQuestNpcActor(npcs.Npc22382.alias, 76100):DoFreeStyle(1060, true, nil, true, true, false, true)
    actorMgr:GetActor("76100"):GetQuestNpcActor(npcs.Npc22385.alias, 76100):DoFreeStyle(1130, true, nil, true, true, false, true)
    actorMgr:GetActor("76100"):GetQuestNpcActor(npcs.Npc7182.alias, 76100):PlayEmoSync("", "", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    actorMgr:GetActor("76100"):GetQuestNpcActor(npcs.Npc7182.alias, 76100):DisableInteeHeadCtrl(true)
end

function Q7610052Trigger_pose:PreTriggerIn()
    print("Q7610052Trigger_pose - PreTriggerIn")
end

function Q7610052Trigger_pose:LightUpTriggerIn()
    print("Q7610052Trigger_pose - LightUpTriggerIn")
end

function Q7610052Trigger_pose:TriggerOut()
    print("Q7610052Trigger_pose - TriggerOut")
end

return Q7610052Trigger_pose
