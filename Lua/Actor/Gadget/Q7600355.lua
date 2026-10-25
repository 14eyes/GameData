require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600355 = class("Q7600355", GadgetActorProxy)
Q7600355.defaultAlias = "Q7600355"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600355:OnPostDataPrepare()
    print("Q7600355 - OnPostDataPrepare")
    this = self
end

function Q7600355:OnPostComponentPrepare()
    print("Q7600355 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600355:TriggerIn()
    print("Q7600355 - TriggerIn")
    actorMgr:GetActor("76003"):GetQuestNpcActor(npcs.Npc21882.alias, 76003):RunToTask({x = 3382.919, y = 357.595, z = 9772.813}, function(arg1)
        actorMgr:GetActor("76003"):GetQuestNpcActor(npcs.Npc21882.alias, 76003):RunToTask({x = 3388.813, y = 357.595, z = 9779.191}, function(arg1)
            this:DestroySelf()
            actorUtils.FinishQuestID(false, 7600355)
        end, nil, nil)
    end, nil, nil)
end

function Q7600355:PreTriggerIn()
    print("Q7600355 - PreTriggerIn")
end

function Q7600355:LightUpTriggerIn()
    print("Q7600355 - LightUpTriggerIn")
end

function Q7600355:TriggerOut()
    print("Q7600355 - TriggerOut")
end

return Q7600355
