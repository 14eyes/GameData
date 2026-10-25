require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74253 = class("Quest74253", QuestActorProxy)
Quest74253.defaultAlias = "Quest74253"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest74253:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74253:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7425301"] = self.OnSubStart7425301,
        ["7425302"] = self.OnSubStart7425302,
        ["7425303"] = self.OnSubStart7425303,
        ["7425304"] = self.OnSubStart7425304
    }
end

function Quest74253:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7425301"] = self.OnSubFinish7425301,
        ["7425302"] = self.OnSubFinish7425302,
        ["7425303"] = self.OnSubFinish7425303,
        ["7425304"] = self.OnSubFinish7425304
    }
end

function Quest74253:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7425302"] = self.OnSubFailed7425302, ["7425303"] = self.OnSubFailed7425303}
end

function Quest74253:Start()
    print("Start")
end

function Quest74253:OnDestroy()
    print("OnDestroy")
end

function Quest74253:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74253:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74253:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7425303N16920Trigger")
    this:ActorDestroy("Q7425301Trigger", 74253)
    this:SafeDestroyQuestNpc(npcs.Npc16920.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16922.alias, 3)
    this:RemoveLocalGadget(73167060, "1")
    this:RemoveLocalGadget(73177013, "0")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177007, "3")
    this:RecycleAllRes()
end

function Quest74253:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7425301Trigger", 74253)
end

function Quest74253:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7425301 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7425302 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest74253:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest74253:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest74253:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest74253:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74253:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 2658.658, y = 334.922, z = 4654.793}, 30, 73177007, 10000133, 7425302) then
        actorUtils.FinishQuestWithParam({false}, {7425302})
    else
        if this:GetSubQuestState(7425302) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest74253:OnSubStart7425301(arg1)
    print("OnSubStart7425301")
    actorMgr:CreateActorWithPos("Q7425301Trigger", "Actor/Gadget/Q7425301Trigger", 70900002, 0, points.Q7425301Trigger.pos, points.Q7425301Trigger.rot, true, false, 3, nil, 0, 74253)
end

function Quest74253:OnSubFinish7425301(arg1)
    print("OnSubFinish7425301")
end

function Quest74253:OnSubStart7425302(arg1)
    print("OnSubStart7425302")
    this:RepeatSitCheck()
end

function Quest74253:OnSubFinish7425302(arg1)
    print("OnSubFinish7425302")
end

function Quest74253:OnSubFailed7425302(arg1)
    print("OnSubFailed7425302")
    this:RecycleAllRes()
end

function Quest74253:OnSubStart7425303(arg1)
    print("OnSubStart7425303")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7425303, 0, 40, 0.5, npcs.Npc16920.id)
end

function Quest74253:OnSubFinish7425303(arg1)
    print("OnSubFinish7425303")
    this:NpcDestroyImmediately(3, npcs.Npc16920.alias)
end

function Quest74253:OnSubFailed7425303(arg1)
    print("OnSubFailed7425303")
    this:RecycleAllRes()
end

function Quest74253:OnSubStart7425304(arg1)
    print("OnSubStart7425304")
    this:CreateQuestNpc(arg1, npcs.Npc16920.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16922.id, 0, false, 0)
    this:CreateLocalGadget(73177013, "0", {x = 2658.107, y = 336.726, z = 4662.224}, {x = 0, y = 317.768, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "1", {x = 2657.862, y = 336.726, z = 4662.025}, {x = 0, y = 138.952, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 2658.581, y = 335.951, z = 4661.925}, {x = 0, y = 285.697, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177007, "3", {x = 2657.649, y = 335.948, z = 4662.228}, {x = 0, y = 285.697, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest74253:OnSubFinish7425304(arg1)
    print("OnSubFinish7425304")
    this:NpcDestroyImmediately(3, npcs.Npc16920.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16922.alias)
    this:RecycleAllRes()
end

return Quest74253
