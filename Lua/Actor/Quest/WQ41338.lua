require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41338 = class("Quest41338", QuestActorProxy)
Quest41338.defaultAlias = "Quest41338"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest41338:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest41338:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4133814"] = self.OnSubStart4133814,
        ["4133801"] = self.OnSubStart4133801,
        ["4133802"] = self.OnSubStart4133802,
        ["4133803"] = self.OnSubStart4133803,
        ["4133804"] = self.OnSubStart4133804,
        ["4133805"] = self.OnSubStart4133805,
        ["4133806"] = self.OnSubStart4133806,
        ["4133807"] = self.OnSubStart4133807,
        ["4133808"] = self.OnSubStart4133808,
        ["4133809"] = self.OnSubStart4133809,
        ["4133810"] = self.OnSubStart4133810,
        ["4133811"] = self.OnSubStart4133811,
        ["4133812"] = self.OnSubStart4133812,
        ["4133813"] = self.OnSubStart4133813
    }
end

function Quest41338:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4133814"] = self.OnSubFinish4133814,
        ["4133801"] = self.OnSubFinish4133801,
        ["4133802"] = self.OnSubFinish4133802,
        ["4133803"] = self.OnSubFinish4133803,
        ["4133804"] = self.OnSubFinish4133804,
        ["4133805"] = self.OnSubFinish4133805,
        ["4133806"] = self.OnSubFinish4133806,
        ["4133807"] = self.OnSubFinish4133807,
        ["4133808"] = self.OnSubFinish4133808,
        ["4133809"] = self.OnSubFinish4133809,
        ["4133810"] = self.OnSubFinish4133810,
        ["4133811"] = self.OnSubFinish4133811,
        ["4133812"] = self.OnSubFinish4133812,
        ["4133813"] = self.OnSubFinish4133813
    }
end

function Quest41338:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4133814"] = self.OnSubFailed4133814,
        ["4133801"] = self.OnSubFailed4133801,
        ["4133802"] = self.OnSubFailed4133802,
        ["4133803"] = self.OnSubFailed4133803,
        ["4133804"] = self.OnSubFailed4133804,
        ["4133805"] = self.OnSubFailed4133805,
        ["4133806"] = self.OnSubFailed4133806,
        ["4133807"] = self.OnSubFailed4133807,
        ["4133808"] = self.OnSubFailed4133808,
        ["4133809"] = self.OnSubFailed4133809,
        ["4133810"] = self.OnSubFailed4133810,
        ["4133811"] = self.OnSubFailed4133811,
        ["4133812"] = self.OnSubFailed4133812,
        ["4133813"] = self.OnSubFailed4133813
    }
end

function Quest41338:Start()
    print("Start")
end

function Quest41338:OnDestroy()
    print("OnDestroy")
end

function Quest41338:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41338:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41338:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc2096Data.alias, 3)
end

function Quest41338:OnSubStart4133801(arg1)
    print("OnSubStart4133801")
    self:CreateQuestNpc(arg1, npcs.Npc2096Data.id, 0)
end

function Quest41338:OnSubFinish4133801(arg1)
    print("OnSubFinish4133801")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc2096Data.alias):SetPosAndTurnTo(sceneData:GetDummyPoint(3, "Q41338_xiaoqian1").pos, M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q41338_xiaoqian1").rot), false)
    end, nil, nil, "")
end

function Quest41338:OnSubFailed4133801(arg1)
    print("OnSubFailed4133801")
end

function Quest41338:OnSubStart4133802(arg1)
    print("OnSubStart4133802")
end

function Quest41338:OnSubFinish4133802(arg1)
    print("OnSubFinish4133802")
end

function Quest41338:OnSubFailed4133802(arg1)
    print("OnSubFailed4133802")
end

function Quest41338:OnSubStart4133803(arg1)
    print("OnSubStart4133803")
    self:CountDownUIStart(45, 10, 3)
    self:CallDelay(49, function(arg1)
        actorUtils.FinishQuestID(true, 4133803)
        print("fail")
    end)
end

function Quest41338:OnSubFinish4133803(arg1)
    print("OnSubFinish4133803")
    self:CountDownUITerminate()
    self:DestroyQuestNpcActor(npcs.Npc2096Data.alias, 3)
end

function Quest41338:OnSubFailed4133803(arg1)
    print("OnSubFailed4133803")
    self:CountDownUITerminate()
end

function Quest41338:OnSubStart4133804(arg1)
    print("OnSubStart4133804")
end

function Quest41338:OnSubFinish4133804(arg1)
    print("OnSubFinish4133804")
end

function Quest41338:OnSubFailed4133804(arg1)
    print("OnSubFailed4133804")
end

function Quest41338:OnSubStart4133805(arg1)
    print("OnSubStart4133805")
end

function Quest41338:OnSubFinish4133805(arg1)
    print("OnSubFinish4133805")
end

function Quest41338:OnSubFailed4133805(arg1)
    print("OnSubFailed4133805")
end

function Quest41338:OnSubStart4133806(arg1)
    print("OnSubStart4133806")
    self:CallDelay(2, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc2096Data.alias})
        arg1:TransmitPlayerByQuestId(4133806, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(4133806, npcs.Npc2096Data.id, 1)
        end, questNpcCreateTask)
    end)
end

function Quest41338:OnSubFinish4133806(arg1)
    print("OnSubFinish4133806")
    self:ShowBlackScreen(0.3, 1, 0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc2096Data.alias):SetPosAndTurnTo(sceneData:GetDummyPoint(3, "Q41338_xiaoqian3").pos, M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q41338_xiaoqian3").rot), false)
    end, nil, nil, "")
end

function Quest41338:OnSubFailed4133806(arg1)
    print("OnSubFailed4133806")
end

function Quest41338:OnSubStart4133807(arg1)
    print("OnSubStart4133807")
end

function Quest41338:OnSubFinish4133807(arg1)
    print("OnSubFinish4133807")
end

function Quest41338:OnSubFailed4133807(arg1)
    print("OnSubFailed4133807")
end

function Quest41338:OnSubStart4133808(arg1)
    print("OnSubStart4133808")
end

function Quest41338:OnSubFinish4133808(arg1)
    print("OnSubFinish4133808")
    self:DestroyQuestNpcActor(npcs.Npc2096Data.alias, 3)
    self:CountDownUITerminate()
    self:CallDelay(2, function(arg1)
        arg1:ShowBlackScreen(0.3, 1.5, 0.5, function(arg1)
            arg1:CreateQuestNpcById(4133808, npcs.Npc2096Data.id, 1)
        end, nil, nil, "")
    end)
end

function Quest41338:OnSubFailed4133808(arg1)
    print("OnSubFailed4133808")
    self:CountDownUITerminate()
end

function Quest41338:OnSubStart4133809(arg1)
    print("OnSubStart4133809")
end

function Quest41338:OnSubFinish4133809(arg1)
    print("OnSubFinish4133809")
end

function Quest41338:OnSubFailed4133809(arg1)
    print("OnSubFailed4133809")
end

function Quest41338:OnSubStart4133810(arg1)
    print("OnSubStart4133810")
end

function Quest41338:OnSubFinish4133810(arg1)
    print("OnSubFinish4133810")
end

function Quest41338:OnSubFailed4133810(arg1)
    print("OnSubFailed4133810")
end

function Quest41338:OnSubStart4133811(arg1)
    print("OnSubStart4133811")
end

function Quest41338:OnSubFinish4133811(arg1)
    print("OnSubFinish4133811")
end

function Quest41338:OnSubFailed4133811(arg1)
    print("OnSubFailed4133811")
end

function Quest41338:OnSubStart4133812(arg1)
    print("OnSubStart4133812")
end

function Quest41338:OnSubFinish4133812(arg1)
    print("OnSubFinish4133812")
end

function Quest41338:OnSubFailed4133812(arg1)
    print("OnSubFailed4133812")
end

function Quest41338:OnSubStart4133813(arg1)
    print("OnSubStart4133813")
end

function Quest41338:OnSubFinish4133813(arg1)
    print("OnSubFinish4133813")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc2096Data.alias, 3)
    end, nil, nil, "")
end

function Quest41338:OnSubFailed4133813(arg1)
    print("OnSubFailed4133813")
end

function Quest41338:OnSubStart4133814(arg1)
    print("OnSubStart4133814")
end

function Quest41338:OnSubFinish4133814(arg1)
    print("OnSubFinish4133814")
end

function Quest41338:OnSubFailed4133814(arg1)
    print("OnSubFailed4133814")
end

return Quest41338
