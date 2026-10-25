require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71800 = class("Quest71800", QuestActorProxy)
Quest71800.defaultAlias = "Quest71800"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71800:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71800:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7180001"] = self.OnSubStart7180001,
        ["7180002"] = self.OnSubStart7180002,
        ["7180003"] = self.OnSubStart7180003,
        ["7180004"] = self.OnSubStart7180004,
        ["7180005"] = self.OnSubStart7180005,
        ["7180007"] = self.OnSubStart7180007,
        ["7180006"] = self.OnSubStart7180006
    }
end

function Quest71800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7180001"] = self.OnSubFinish7180001,
        ["7180002"] = self.OnSubFinish7180002,
        ["7180003"] = self.OnSubFinish7180003,
        ["7180004"] = self.OnSubFinish7180004,
        ["7180005"] = self.OnSubFinish7180005,
        ["7180007"] = self.OnSubFinish7180007,
        ["7180006"] = self.OnSubFinish7180006
    }
end

function Quest71800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7180001"] = self.OnSubFailed7180001,
        ["7180002"] = self.OnSubFailed7180002,
        ["7180003"] = self.OnSubFailed7180003,
        ["7180004"] = self.OnSubFailed7180004,
        ["7180005"] = self.OnSubFailed7180005,
        ["7180007"] = self.OnSubFailed7180007,
        ["7180006"] = self.OnSubFailed7180006
    }
end

function Quest71800:Start()
    print("Start")
end

function Quest71800:OnDestroy()
    print("OnDestroy")
end

function Quest71800:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 2, 0.5, self.CancelAll, nil, nil, "")
end

function Quest71800:OnMainFailed(arg1)
    print("OnMainFailed")
    self:NotifyTo(npcs.Npc2093Data.alias, 0, true)
end

function Quest71800:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc2093Data.alias, 0, true)
end

function Quest71800:InvokeOnInteraction(arg1)
    if arg1 == 2 then
        print("Invoke 2")
        self:PlayEffect("Eff_EnterTeapot_Smoke", sceneData:GetDummyPoint(3, "Q1014Effect1").pos)
        self:CallDelay(2, function(arg1)
            arg1:PlayEffect("Eff_EnterTeapot_Surrounding", sceneData:GetDummyPoint(3, "Q101405Born").pos)
        end)

        self:CallDelay(7.3, function(arg1)
            arg1:PlayEffect("Eff_EnterTeapot_Absorb", sceneData:GetDummyPoint(3, "Q1014Effect3").pos)
        end)
    end
end

function Quest71800:CancelAll()
    print("CancelAll")
    self:NotifyTo(npcs.Npc2093Data.alias, 0, true)
end

function Quest71800:OnSubStart7180001(arg1)
    print("OnSubStart7180001")
    self:NotifyTo(npcs.Npc2093Data.alias, 2, true)
end

function Quest71800:OnSubFinish7180001(arg1)
    print("OnSubFinish7180001")
end

function Quest71800:OnSubFailed7180001(arg1)
    print("OnSubFailed7180001")
end

function Quest71800:OnSubStart7180002(arg1)
    print("OnSubStart7180002")
    self:NotifyTo(npcs.Npc2093Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc10245Data.id, 0)
end

function Quest71800:OnSubFinish7180002(arg1)
    print("OnSubFinish7180002")
    self:DestroyQuestNpcActor(npcs.Npc10245Data.alias, 3)
end

function Quest71800:OnSubFailed7180002(arg1)
    print("OnSubFailed7180002")
end

function Quest71800:OnSubStart7180003(arg1)
    print("OnSubStart7180003")
    self:NotifyTo(npcs.Npc2093Data.alias, 2, true)
end

function Quest71800:OnSubFinish7180003(arg1)
    print("OnSubFinish7180003")
end

function Quest71800:OnSubFailed7180003(arg1)
    print("OnSubFailed7180003")
end

function Quest71800:OnSubStart7180004(arg1)
    print("OnSubStart7180004")
    self:NotifyTo(npcs.Npc2093Data.alias, 2, true)
end

function Quest71800:OnSubFinish7180004(arg1)
    print("OnSubFinish7180004")
end

function Quest71800:OnSubFailed7180004(arg1)
    print("OnSubFailed7180004")
end

function Quest71800:OnSubStart7180005(arg1)
    print("OnSubStart7180005")
    self:NotifyTo(npcs.Npc2093Data.alias, 2, true)
end

function Quest71800:OnSubFinish7180005(arg1)
    print("OnSubFinish7180005")
end

function Quest71800:OnSubFailed7180005(arg1)
    print("OnSubFailed7180005")
end

function Quest71800:OnSubStart7180007(arg1)
    print("OnSubStart7180007")
    self:NotifyTo(npcs.Npc2093Data.alias, 2, true)
end

function Quest71800:OnSubFinish7180007(arg1)
    print("OnSubFinish7180007")
end

function Quest71800:OnSubFailed7180007(arg1)
    print("OnSubFailed7180007")
end

function Quest71800:OnSubStart7180006(arg1)
    print("OnSubStart7180006")
    self:NotifyTo(npcs.Npc2093Data.alias, 2, true)
end

function Quest71800:OnSubFinish7180006(arg1)
    print("OnSubFinish7180006")
end

function Quest71800:OnSubFailed7180006(arg1)
    print("OnSubFailed7180006")
end

return Quest71800
