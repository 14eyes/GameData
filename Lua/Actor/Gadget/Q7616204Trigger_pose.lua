require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616204Trigger_pose = class("Q7616204Trigger_pose", GadgetActorProxy)
Q7616204Trigger_pose.defaultAlias = "Q7616204Trigger_pose"
local Q76162ClientConfig = require("Quest/Client/Q76162ClientConfig")

local this
local subIDs = Q76162ClientConfig.SubIDs
local npcs = Q76162ClientConfig.Npcs
local points = Q76162ClientConfig.Points

function Q7616204Trigger_pose:OnPostDataPrepare()
    print("Q7616204Trigger_pose - OnPostDataPrepare")
    this = self
end

function Q7616204Trigger_pose:OnPostComponentPrepare()
    print("Q7616204Trigger_pose - OnPostComponentPrepare")
    this:AddComponentTrigger(75, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76162)
end

function Q7616204Trigger_pose:TriggerIn()
    print("Q7616204Trigger_pose - TriggerIn")
    actorMgr:GetActor("76162"):GetQuestNpcActor(npcs.Npc7182.alias, 76162):DoFreeStyle(4122, true, nil, true, true, false, true)
    actorMgr:GetActor("76162"):GetQuestNpcActor(npcs.Npc7608.alias, 76162):DoFreeStyle(1280, true, nil, true, true, false, true)
    actorMgr:GetActor("76162"):GetQuestNpcActor(npcs.Npc22382.alias, 76162):DoFreeStyle(4120, true, nil, true, true, false, true)
    actorMgr:GetActor("76162"):GetQuestNpcActor(npcs.Npc22385.alias, 76162):DoFreeStyle(1080, true, nil, true, true, false, true)
end

function Q7616204Trigger_pose:PreTriggerIn()
    print("Q7616204Trigger_pose - PreTriggerIn")
end

function Q7616204Trigger_pose:LightUpTriggerIn()
    print("Q7616204Trigger_pose - LightUpTriggerIn")
end

function Q7616204Trigger_pose:TriggerOut()
    print("Q7616204Trigger_pose - TriggerOut")
end

return Q7616204Trigger_pose
