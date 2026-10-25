require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2011PlayUSMTrigger = class("Q2011PlayUSMTrigger", GadgetActorProxy)
Q2011PlayUSMTrigger.defaultAlias = "Q2011PlayUSMTrigger"
local Q2011ClientConfig = require("Quest/Client/Q2011ClientConfig")

local subIDs = Q2011ClientConfig.SubIDs
local npcs = Q2011ClientConfig.Npcs

function Q2011PlayUSMTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2011PlayUSMTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2011PlayUSMTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(Q2011ClientConfig.ActorAlias):ShowBlackScreen(0, 1, 0, function()
        actorMgr:GetActor(Q2011ClientConfig.ActorAlias):PlayCutsceneIndex(201106, function(arg1)
            print("On Finish USM")
            local actor = actorMgr:GetActor(Q2011ClientConfig.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 201104)
                actor:ShowBlackScreen(0, 1.5, 0)
            end
        end, nil, nil, true)
    end)

    self:DestroySelf()
end

function Q2011PlayUSMTrigger:TriggerOut()
    print("TriggerOut")
end

return Q2011PlayUSMTrigger
