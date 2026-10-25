require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13027TriggerDustAdded = class("Q13027TriggerDustAdded", GadgetActorProxy)
Q13027TriggerDustAdded.defaultAlias = "Q13027TriggerDustAdded"
local Q13027ClientConfig = require("Quest/Client/Q13027ClientConfig")

local this
local subIDs = Q13027ClientConfig.SubIDs
local npcs = Q13027ClientConfig.Npcs
local points = Q13027ClientConfig.Points
local datas = Q13027ClientConfig.Datas

function Q13027TriggerDustAdded:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13027TriggerDustAdded:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13027TriggerDustAdded:TriggerIn()
    print("TriggerIn")
end

function Q13027TriggerDustAdded:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13027TriggerDustAdded:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("13027"):ShowBlackScreenWithDialogText(0, 2, 0.8, function(arg1)
        local actor = actorMgr:GetActor("13027")
        actor:CreateQuestNpcById(1302704, npcs.Npc1056Data.id, 0)
        actor:RequestInteraction(npcs.Npc1056Data.alias)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q13027TriggerDustAdded:TriggerOut()
    print("TriggerOut")
end

return Q13027TriggerDustAdded
