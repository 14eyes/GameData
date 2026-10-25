require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76016Trigger_back1 = class("Q76016Trigger_back1", GadgetActorProxy)
Q76016Trigger_back1.defaultAlias = "Q76016Trigger_back1"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q76016Trigger_back1:OnPostDataPrepare()
    print("Q76016Trigger_back1 - OnPostDataPrepare")
    this = self
end

function Q76016Trigger_back1:OnPostComponentPrepare()
    print("Q76016Trigger_back1 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(4, 3, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q76016Trigger_back1:TriggerIn()
    print("Q76016Trigger_back1 - TriggerIn")
    actorMgr:GetActor("76016"):GetQuestNpcActor(npcs.Npc21934.alias, 76016):WalkToRouteTask(datas.back1, function(arg1)
        actorMgr:CreateActorWithPos("Q76016Trigger_back1end", "Actor/Gadget/Q76016Trigger_back1end", 70900002, 0, points._Q76016Trigger_back1endPoint_.pos, points._Q76016Trigger_back1endPoint_.rot, true, false, 3)
    end, nil, nil)

    this:DestroySelf()
end

function Q76016Trigger_back1:PreTriggerIn()
    print("Q76016Trigger_back1 - PreTriggerIn")
end

function Q76016Trigger_back1:LightUpTriggerIn()
    print("Q76016Trigger_back1 - LightUpTriggerIn")
end

function Q76016Trigger_back1:TriggerOut()
    print("Q76016Trigger_back1 - TriggerOut")
end

return Q76016Trigger_back1
