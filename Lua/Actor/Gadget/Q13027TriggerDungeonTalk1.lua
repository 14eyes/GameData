require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13027TriggerDungeonTalk1 = class("Q13027TriggerDungeonTalk1", GadgetActorProxy)
Q13027TriggerDungeonTalk1.defaultAlias = "Q13027TriggerDungeonTalk1"
local Q13027ClientConfig = require("Quest/Client/Q13027ClientConfig")

local this
local subIDs = Q13027ClientConfig.SubIDs
local npcs = Q13027ClientConfig.Npcs
local points = Q13027ClientConfig.Points
local datas = Q13027ClientConfig.Datas

function Q13027TriggerDungeonTalk1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13027TriggerDungeonTalk1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13027TriggerDungeonTalk1:TriggerIn()
    print("TriggerIn")
end

function Q13027TriggerDungeonTalk1:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13027TriggerDungeonTalk1:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("13027"):ShowBlackScreenWithDialogText(0, 2, 0.5, function(arg1)
        local actor = actorMgr:GetActor("13027")
        actor:CreateQuestNpcById(1302710, npcs.Npc1056Data.id, 0)
        actor:RequestInteraction(npcs.Npc1056Data.alias)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q13027TriggerDungeonTalk1:TriggerOut()
    print("TriggerOut")
end

return Q13027TriggerDungeonTalk1
