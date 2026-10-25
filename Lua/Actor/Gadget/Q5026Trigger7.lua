require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger7 = class("Q5026Trigger7", GadgetActorProxy)
Q5026Trigger7.defaultAlias = "Q5026Trigger7"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger7:OnPostDataPrepare()
    print("Q5026Trigger7 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger7:OnPostComponentPrepare()
    print("Q5026Trigger7 - OnPostComponentPrepare")
    this:AddComponentTrigger(65, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger7:TriggerIn()
    print("Q5026Trigger7 - TriggerIn")
    actorMgr:GetActor("5026"):GetQuestNpcActor(npcs.Npc14938.alias, 5026):DoFreeStyle(5, true, nil, true, true, false, false)
    actorMgr:GetActor("5026"):GetQuestNpcActor(npcs.Npc14940.alias, 5026):DoFreeStyle(3, true, nil, true, true, false, false)
    this:DestroySelf()
end

function Q5026Trigger7:PreTriggerIn()
    print("Q5026Trigger7 - PreTriggerIn")
end

function Q5026Trigger7:LightUpTriggerIn()
    print("Q5026Trigger7 - LightUpTriggerIn")
end

function Q5026Trigger7:TriggerOut()
    print("Q5026Trigger7 - TriggerOut")
end

return Q5026Trigger7
